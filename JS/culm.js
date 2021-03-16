/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

const fs = require('fs');

const rimraf = require('rimraf');

// Invoke PGSQL
const { Client } = require('pg');
const client = new Client({ user: 'postgres', database: 'mtg' });
// Invoke PGSQL

// Invoke Puppeteer
const puppeteer = require('puppeteer');
const { PuppeteerBlocker } = require('@cliqz/adblocker-puppeteer');
const fetch = require('cross-fetch');
// Invoke Puppeteer

const ProgressBar = require('progress');

const root = 'C:\\Users\\SentientScythe\\MtGScraper\\';
const download = root + 'downloads';
const tempFile = root + 'current.mwDeck';

let insertTrueStats = async () => {
	const selectDecks = "SELECT deck_url FROM mtg.tournament_decks WHERE cards IS NULL OR cards = '{}' ORDER BY deck_url";
	await client.connect();
	const deckUrls = await client.query(selectDecks);

	// Invoke Puppeteer
	const browser = await puppeteer.launch({
		headless: false
	});
	const page = await browser.newPage();
	await page._client.send('Page.setDownloadBehavior', {
		behavior: 'allow',
		downloadPath: download
	});
	await PuppeteerBlocker.fromPrebuiltAdsAndTracking(fetch).then((blocker) => {
		blocker.enableBlockingInPage(page);
	});
	// Invoke Puppeteer

	const bar = new ProgressBar('Progress [:bar] :current/:total :percent :etas', {
		total: deckUrls.rows.length
	});

	for (const deckUrl of deckUrls.rows) {
		var success = true;

		do {
			success = true;

			try {
				rimraf.sync(download);
			} catch (e) {}

			try {
				fs.mkdirSync(download);
			} catch (e) {}

			try {
				if (await downloadMwdeck(client, deckUrl.deck_url, page)) {
					await parseMwdeck(client, deckUrl.deck_url);
				}
			} catch (e) {
				success = false;
			}
		} while (success === false);

		bar.tick();
	}

	await client.release();
	await browser.close();
	process.exit();
};

const baseSelector = 'body > div.page > div > table > tbody > tr > td:nth-child(2)';
const secondChild = ' > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(';
const thirdChild = ' > table:nth-child(3) > tbody > tr > td:nth-child(2) > div > a:nth-child(';
const secondButton = baseSelector + secondChild + '3)';
const thirdButton = baseSelector + secondChild + '4)';
const secondButtonP = baseSelector + thirdChild + '3)';
const thirdButtonP = baseSelector + thirdChild + '4)';

let downloadMwdeck = async (client, deckUrl, page) => {
	var success = true;

	do {
		success = true;

		try {
			await page.goto(deckUrl);

			// Confirm page exists
			const notFound = await page.evaluate(() => {
				return 'No event could be found.' === document.querySelector('div.page').innerText;
			});

			if (notFound) {
				await client.query('DELETE FROM mtg.tournament_decks WHERE deck_url = $1', [deckUrl]);
				return false;
			}

			const extraTable = await page.evaluate(() => {
				return Boolean(document.querySelector('div.R12'));
			});

			if (extraTable) {
				try {
					await page.click(thirdButtonP);
				} catch (e) {
					await page.click(secondButtonP);
				}
			} else {
				try {
					await page.click(thirdButton);
				} catch (e) {
					await page.click(secondButton);
				}
			}

			var fileList = [];
			var filename = '';
			var retry = 0;

			while ((fileList.length == 0 || filename.includes('.crdownload')) && retry < 64) {
				try {
					fileList = fs.readdirSync(download);
					filename = fileList[0];
				} catch (e) {
				} finally {
					retry++;
				}
			}

			if (!filename.includes('.mwDeck')) {
				throw new Error('File is in the wrong format!');
			}
		} catch (e) {
			success = false;
		}
	} while (success === false);

	return success;
};

const copyIntoTemp =
	"DROP TABLE IF EXISTS mwdeck_import; CREATE TEMP TABLE IF NOT EXISTS mwdeck_import(line text); COPY mwdeck_import FROM 'C:\\Users\\SentientScythe\\MtGScraper\\current.mwDeck'";
const updateTDCards = 'UPDATE mtg.tournament_decks SET cards = ARRAY(TABLE mwdeck_import OFFSET 4) WHERE deck_url = $1';

let parseMwdeck = async (client, deckUrl) => {
	try {
		fs.unlinkSync(tempFile);
	} catch (e) {}

	const fileList = fs.readdirSync(download);
	const filename = fileList[0];
	const downloadPath = download + '\\';

	try {
		fs.writeFileSync(tempFile, fs.readFileSync(downloadPath + filename, 'utf8'), { encoding: 'utf8', flag: 'w' });
	} catch (e) {
		fs.writeFileSync(tempFile, fs.readFileSync(downloadPath + filename.replace(/\s/g, '_'), 'utf8'), {
			encoding: 'utf8',
			flag: 'w'
		});
	}

	await client.query(copyIntoTemp);
	await client.query(updateTDCards, [deckUrl]);
	fs.unlinkSync(tempFile);
};

insertTrueStats();
