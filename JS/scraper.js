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

	const getDecksMatching = async () => {
		const decksMatchingHtml = await page.evaluate(() => {
			const element = document.querySelector(
				'body > div.page > div > table > tbody > tr > td:nth-child(2) > form > table > tbody > tr:nth-child(1) > td > div'
			);
			return element.innerText;
		});

		const decksMatchingArray = await decksMatchingHtml.split(' ');
		return Number(decksMatchingArray[0]);
	};

	var decksMatching = await getDecksMatching();
	var lastPage = Math.ceil(decksMatching / 25);
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
							'00/00/00' === element.children[6].innerText ? null : element.children[6].innerText
						]);
					}

					return data;
				});
			} catch (e) {
				success = false;
			}
		} while (success === false);

		for (const row of result) {
			await client.query(
				'INSERT INTO mtg.tournament_decks (deck_url, deck_name, player, event_url, event_name, rank, date) VALUES ($1, $2, $3, $4, $5, $6, $7) ON CONFLICT (deck_url) DO NOTHING;',
				row
			);
		}

		bar.tick(result.length);

		if (i === lastPage) {
			decksMatching = await getDecksMatching();
			lastPage = Math.ceil(decksMatching / 25);
		}
	}

	await client.query(
		"UPDATE mtg.tournament_decks SET format = CASE WHEN event_url LIKE '%ST' THEN 'Standard' WHEN event_url LIKE '%MO' THEN 'Modern' WHEN event_url LIKE '%LE' THEN 'Legacy' WHEN event_url LIKE '%VI' THEN 'Vintage' WHEN event_url LIKE '%LI' THEN 'Limited' WHEN event_url LIKE '%EX' THEN 'Extended' WHEN event_url LIKE '%PAU' THEN 'Pauper' WHEN event_url LIKE '%PEA' THEN 'Peasant' WHEN event_url LIKe '%PI' THEN 'Pioneer' WHEN event_url LIKE '%EDHM' THEN 'EDH Online' WHEN event_url LIKE '%EDHP' THEN 'EDH Peasant' WHEN event_url LIKE '%EDH' THEN 'Elder Dragon Highlander' WHEN event_url LIKE '%HIGH' THEN 'Highlander' WHEN event_url LIKE '%HI' THEN 'Historic' WHEN event_url LIKE '%CHL' THEN 'Canadian Highlander' WHEN event_url LIKE '%BL' THEN 'Block' END WHERE format IS NULL;"
	);
	await client.end();
	await browser.close();
	process.exit();
};

scrape();
