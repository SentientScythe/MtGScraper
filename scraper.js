const Promise = require('bluebird');
const fs = require('fs');
const log4js = require('log4js');
const puppeteer = require('puppeteer');
const {
	exec
} = require('child_process');

Promise.longStackTraces();

log4js.configure({
	appenders: {
		out: {
			type: 'file',
			filename: 'deck_url.csv',
			layout: {
				type: 'messagePassThrough'
			}
		}

	},
	categories: {
	default: {
			appenders: ['out'],
			level: 'info'
		}
	}
});

let scrape = async() => {
	const logger = log4js.getLogger('log');
	const browser = await puppeteer.launch({
			headless: false
		});
	const base_url = 'https://mtgtop8.com/search';
	var page = await browser.newPage();
	await page.goto(base_url);
	const decks_matching = await page.evaluate(() => {
			const element = document.querySelector('body > div.page > div > table > tbody > tr > td:nth-child(2) > form > table > tbody > tr:nth-child(1) > td > div');
			return element.innerText;
		});
	const dms = decks_matching.split(' ');
	const last_page = Math.ceil(dms[0] / 25);

	for (i = 1; i <= last_page; i++) {
		do {
			var success = true;

			try {
				await page.evaluate(`PageSubmit(${i})`);
			} catch (e) {
				success = false;
			}
		} while (success == false);

		await page.waitForNavigation();
		var result = null;

		do {
			var success = true;

			try {
				result = await page.evaluate(() => {
						const base_url = 'https://mtgtop8.com/';
						var data = "";

						const elements = document.querySelectorAll('tr.hover_tr');

						for (var element of elements) {
							let deck_url = base_url + element.children[1].children[0].getAttribute('href');
							let deck_name = element.children[1].innerText;
							let player = element.children[2].innerText;
							let event_url = base_url + element.children[3].children[0].getAttribute('href');
							let event_name = element.children[3].innerText;
							let rank = element.children[5].innerText;
							let date = element.children[6].innerText;

							data += deck_url + "\t" + deck_name + "\t" + player + "\t" + event_url + "\t" + event_name + "\t" + rank + "\t" + date + "\r\n";
						}

						return data;
					});
			} catch (e) {
				success = false;
			}
		} while (success == false);

		await logger.info(result);
	}
};

let download = async() => {
	const browser = await puppeteer.launch({
			headless: true
		});
	const urls = [];
	var page = await browser.newPage();
	await page._client.send('Page.setDownloadBehavior', {
		behavior: 'allow',
		downloadPath: './downloads'
	})

	for (const url of urls) {
		do {
			var success = true;

			try {
				await page.goto(url);
				await page.waitForSelector('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');
				await page.click('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');
			} catch (e) {
				success = false;
				await page.close();
				page = await browser.newPage();
				await page._client.send('Page.setDownloadBehavior', {
					behavior: 'allow',
					downloadPath: './downloads'
				})
			}
		} while (success == false);
	}

	await page.close();
};

let harvest = async() => {
	return puppeteer.launch({
		headless: false,
		slowMo: 12
	}).then(async browser => {
		const logger = await log4js.getLogger('log');
		const base_url = 'https://deckstats.net/deckbuilder/';

		// Promise Teller
		process.on("unhandledRejection", (reason, p) => {
			debugger;
			console.error("Unhandled Rejection at: Promise", p, "reason:", reason);
			browser.close();
		});

		var context = await browser.createIncognitoBrowserContext();
		var page = await context.newPage();
		await page.goto(base_url);

		var firstRun = true;

		const fileRegex = /(Block|Canadian_Highlander|Commander_Pauper|Duel_Commander|Extended|Highlander|Legacy|Limited|Modern|MTGO_Commander|Pauper|Peasant|Standard|Vintage)_(?:(.+)(?:_by_))?(.*)\.mwDeck/;

		for (const file of fileList) {
			const fileGroups = await fileRegex.exec(file);
			const key = fileGroups[1] + "\t" + fileGroups[2] + "\t" + fileGroups[3] + "\t";

			do {
				var result = "";
				var success = true;

				try {
					await page.waitForSelector('#manual_entry_decklist_button');
					await page.click('#manual_entry_decklist_button');

					await page.waitForSelector('#decklist_dialog-tabs > ul > li:nth-child(2)');
					await page.click('#decklist_dialog-tabs > ul > li:nth-child(2)');

					const chooseFile = await page.$('#decklist_dialog_file');
					await chooseFile.uploadFile(__dirname + "/downloads/" + file);
					const buttons = await page.$$('body > div > div.ui-dialog-buttonpane.ui-widget-content.ui-helper-clearfix > div > button:nth-child(1)');

					for (const button of buttons) {
						try {
							await button.click();
						} catch (e) {}
					}

					await page.waitForResponse('https://deckstats.net/api.php');

					if (!firstRun) {
						await page.waitForSelector('#decklist_replace_dialog > div.decklist_replace_dialog_buttons > button:nth-child(1)');
						await page.click('#decklist_replace_dialog > div.decklist_replace_dialog_buttons > button:nth-child(1)');
					} else {
						firstRun = false;
					}

					await page.waitForSelector('#analyze_button');
					await page.click('#analyze_button');

					await page.waitForSelector('#deck_tabs_bar > li:nth-child(1)');
					await page.click('#deck_tabs_bar > li:nth-child(1)');

					await page.waitForSelector('#deck_overview_group_by');
					await page.select('#deck_overview_group_by', 'cc');

					result += await page.evaluate(() => {
						var data = "";
						var ccs = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
						const headers = document.querySelectorAll('#deck_overview_cards > div > h3');
						const ccRegex = /CC([0-9]{1,2}) \(([0-9]*)\)/;

						for (const header of headers) {
							const headerText = header.textContent;

							if (ccRegex.test(headerText)) {
								const groups = ccRegex.exec(headerText);
								ccs[groups[1]] += Number(groups[2]);
							}
						}

						for (const cc of ccs) {
							data += cc + "\t";
						}

						return data;
					});

					await page.select('#deck_overview_group_by', 'type_extended');

					result += await page.evaluate(() => {
						var data = "";
						var types = new Map([['Lands', 0], ['Artifacts', 0], ['Enchantments', 0], ['Instants', 0],
									['Sorceries', 0], ['Planeswalkers', 0], ['Creatures', 0]]);
						const headers = document.querySelectorAll('#deck_overview_cards > div > h3');

						for (const header of headers) {
							const headerText = header.textContent.split(' ');

							if (types.get(headerText[0]) >= 0) {
								types.set(headerText[0], headerText[1].substring(1, headerText[1].length - 1));
							}
						}

						for (const type of types.values()) {
							data += type + "\t";
						}

						return data;
					});

					await logger.info(key + result);
				} catch (e) {
					success = false;
					firstRun = true;
					await context.close();
					context = await browser.createIncognitoBrowserContext();
					page = await context.newPage();
					await page.goto(base_url);
				}
			} while (success == false);

			fileList.shift();
		};
	});
};

scrape()

// download();

// var fileList = fs.readdirSync('./downloads');

// try {
// harvest();
// } catch (e) {
// harvest();
// }