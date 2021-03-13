/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke Puppeteer
const puppeteer = require('puppeteer');
const { PuppeteerBlocker } = require('@cliqz/adblocker-puppeteer');
const fetch = require('cross-fetch');
// Invoke Puppeteer

// Invoke SQL
const { Client } = require('pg');
const client = new Client({
	user: 'postgres',
	database: 'mtg'
});
// Invoke SQL

const ProgressBar = require('progress');

let scrape = async () => {
	// Invoke SQL
	await client.connect();
	// Invoke SQL

	// Invoke Puppeteer
	const browser = await puppeteer.launch({
		headless: false
	});
	const page = await browser.newPage();
	page.setDefaultNavigationTimeout(0);
	await PuppeteerBlocker.fromPrebuiltAdsAndTracking(fetch).then((blocker) => {
		blocker.enableBlockingInPage(page);
	});
	// Invoke Puppeteer

	await page.goto('https://mtgtop8.com/search');
	const decksMatchingHtml = await page.evaluate(() => {
		const element = document.querySelector(
			'body > div.page > div > table > tbody > tr > td:nth-child(2) > form > table > tbody > tr:nth-child(1) > td > div'
		);
		return element.innerText;
	});
	const decksMatchingArray = await decksMatchingHtml.split(' ');
	const decksMatching = decksMatchingArray[0];
	const lastPage = Math.ceil(decksMatching / 25);
	const bar = new ProgressBar('Progress [:bar] :current/:total :percent :etas', { total: decksMatching });

	for (i = 1; i <= lastPage; i++) {
		var success = true;

		do {
			try {
				await page.evaluate(`PageSubmit(${i})`);
			} catch (e) {
				success = false;
			}
		} while (success === false);

		await page.waitForNavigation();
		var result = [];

		do {
			success = true;

			try {
				result = await page.evaluate(() => {
					const baseUrl = 'https://mtgtop8.com/';
					const data = [];
					const elements = document.querySelectorAll('tr.hover_tr');

					for (const element of elements) {
						const child2 = element.children[1];
						const child4 = element.children[3];
						data.push([
							baseUrl + child2.children[0].getAttribute('href'),
							child2.innerText,
							element.children[2].innerText,
							baseUrl + child4.children[0].getAttribute('href'),
							child4.innerText,
							element.children[5].innerText,
							element.children[6].innerText
						]);
					}

					return data;
				});
			} catch (e) {
				success = false;
			}
		} while (success === false);

		for (const row in result) {
			await client.query(
				'INSERT INTO mtg.tournament_decks (deck_url, deck_name, player, event_url, event_name, rank, date) VALUES ($1, $2, $3, $4, $5, $6, $7) ON CONFLICT (deck_url) DO NOTHING;',
				row
			);
		}

		bar.doTick(result.length);
	}
};

scrape();
