const Promise = require('bluebird');
Promise.longStackTraces();

const fs = require('fs');

const rimraf = require('rimraf');

const {
	Pool
} = require('pg');
const pool = new Pool({
		user: 'postgres',
		database: 'mtg'
	});

const puppeteer = require('puppeteer');

let insert_true_stats = async() => {
	const download_folder = 'C:\\Users\\SentientScythe\\MtGTop8Scraper\\downloads';
	const select_decks = 'SELECT deck_url FROM mtg.tournament_decks WHERE cards IS NULL ORDER BY deck_url';
	const client = await pool.connect();
	const deck_urls = await client.query(select_decks);
	await client.release();

	const browser = await puppeteer.launch({
			headless: false
		});
	var page = await browser.newPage();
	await page._client.send('Page.setDownloadBehavior', {
		behavior: 'allow',
		downloadPath: download_folder
	});

	for (const deck_url of deck_urls.rows) {
		do {
			var success = true;
			try {
				await rimraf.sync(download_folder);
			} catch (e) {}

			try {
				await fs.mkdirSync(download_folder);
			} catch (e) {}

			try {
				await download_mwdeck(page, deck_url.deck_url);
				await parse_mwdeck(deck_url.deck_url);
			} catch (e) {
				success = false;
			}
		} while (success == false);
	}

	await browser.close();

	process.exit();
}

let download_mwdeck = async(page, deck_url) => {
	do {
		var success = true;

		try {
			await page.goto(deck_url);
			await page.waitForSelector('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');

			try {
				await page.click('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(3)');
			} catch (e) {
				await page.click('body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)');
			}

			var fileList = [];
			while (fileList.length == 0) {
				fileList = await fs.readdirSync('./downloads');
			}

			var i = 0;
			var filename = fileList[i];
			while (!filename.includes('.mwDeck')) {
				i++;
				filename = fileList[i];
			}
		} catch (e) {
			success = false;
		}
	} while (success == false);
}

let parse_mwdeck = async(deck_url) => {
	const temp_filepath = './current.mwDeck';

	try {
		await fs.unlinkSync(temp_filepath);
	} catch (e) {}

	const fileList = await fs.readdirSync('./downloads');
	const filename = fileList[0];
	const original_filepath = './downloads/' + filename;
	await fs.writeFileSync(temp_filepath, fs.readFileSync(original_filepath, 'utf8'), {
		encoding: 'utf8',
		flag: 'w'
	});
	await fs.unlinkSync(original_filepath);

	const client = await pool.connect();

	const copy_into_temp = 'DROP TABLE IF EXISTS mwdeck_import; CREATE TEMP TABLE IF NOT EXISTS mwdeck_import(line text); COPY mwdeck_import FROM \'C:\\Users\\SentientScythe\\MtGTop8Scraper\\current.mwDeck\'';
	await client.query(copy_into_temp);
	await fs.unlinkSync(temp_filepath);
	const update_td_cards = 'UPDATE mtg.tournament_decks SET cards = ARRAY(TABLE mwdeck_import OFFSET 4) WHERE deck_url = $1';
	await client.query(update_td_cards, [deck_url]);

	await client.release();
}

insert_true_stats();
