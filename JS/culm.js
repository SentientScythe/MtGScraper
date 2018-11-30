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

const root = 'C:\\Users\\SentientScythe\\MtGScraper\\';
const download = root + 'downloads';
const temp_file = root + 'current.mwDeck';

let insert_true_stats = async() => {
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
		downloadPath: download
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

const second_button = 'body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(2)';
const third_button = 'body > div.page > div > table > tbody > tr > td:nth-child(2) > table:nth-child(2) > tbody > tr > td:nth-child(2) > div > a:nth-child(3)';

let download_mwdeck = async(page, deck_url) => {
	do {
		var success = true;

		try {
			await page.goto(deck_url);
			await page.waitForSelector(second_button);

			try {
				await page.click(third_button);
			} catch (e) {
				await page.click(second_button);
			}

			var fileList = [];
			var filename = '';
			var retry = 0;

			while ((fileList.length == 0 || filename.includes('.crdownload')) && retry < 64) {
				try {
					fileList = await fs.readdirSync(download);
					filename = fileList[0];
				} catch (e) {}
				finally {
					retry++;
				}
			}

			if (!filename.includes('.mwDeck')) {
				throw new Error('File is in the wrong format!');
			}
		} catch (e) {
			success = false;
		}
	} while (success == false);
}

const copy_into_temp = "DROP TABLE IF EXISTS mwdeck_import; CREATE TEMP TABLE IF NOT EXISTS mwdeck_import(line text); COPY mwdeck_import FROM 'C:\\Users\\SentientScythe\\MtGScraper\\current.mwDeck'";
const update_td_cards = 'UPDATE mtg.tournament_decks SET cards = ARRAY(TABLE mwdeck_import OFFSET 4) WHERE deck_url = $1';

let parse_mwdeck = async(deck_url) => {
	try {
		await fs.unlinkSync(temp_file);
	} catch (e) {}

	const fileList = await fs.readdirSync(download);
	const filename = fileList[0];
	const original_filepath = download + '\\' + filename.replace(/\s/g, '_');
	await fs.writeFileSync(temp_file, fs.readFileSync(original_filepath, 'utf8'), {
		encoding: 'utf8',
		flag: 'w'
	});

	const client = await pool.connect();
	await client.query(copy_into_temp);
	await client.query(update_td_cards, [deck_url]);
	await client.release();
	
	await fs.unlinkSync(temp_file);
}

insert_true_stats();
