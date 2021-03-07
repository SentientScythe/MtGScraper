/*jshint esversion: 8 */

const Promise = require('bluebird');
// Promise.longStackTraces(); DEBUG ONLY

// Invoke log4js
const log4js = require('log4js');
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
// Invoke log4js

// Invoke Puppeteer
const puppeteer = require('puppeteer');
const { PuppeteerBlocker } = require('@cliqz/adblocker-puppeteer');
const fetch = require('cross-fetch');
// Invoke Puppeteer

const ProgressBar = require('progress');

let scrape = async () => {
	const logger = log4js.getLogger('log');
	const browser = await puppeteer.launch({
		headless: false
	});
	const page = await browser.newPage();
	page.setDefaultNavigationTimeout(0);
	await PuppeteerBlocker.fromPrebuiltAdsAndTracking(fetch).then((blocker) => {
		blocker.enableBlockingInPage(page);
	});
	await page.goto('https://mtgtop8.com/search');
	const decks_matching = await page.evaluate(() => {
		const element = document.querySelector(
			'body > div.page > div > table > tbody > tr > td:nth-child(2) > form > table > tbody > tr:nth-child(1) > td > div'
		);
		return element.innerText;
	});
	const dms = await decks_matching.split(' ');
	const last_page = Math.ceil(dms[0] / 25);

	for (i = 1; i <= last_page; i++) {
		var success = true;

		do {
			try {
				await page.evaluate(`PageSubmit(${i})`);
			} catch (e) {
				success = false;
			}
		} while (success === false);

		await page.waitForNavigation();
		var result = null;

		do {
			success = true;

			try {
				result = await page.evaluate(() => {
					const base_url = 'https://mtgtop8.com/';
					var data = '';
					const elements = document.querySelectorAll('tr.hover_tr');

					for (var element of elements) {
						let deck_url = base_url + element.children[1].children[0].getAttribute('href');
						let deck_name = element.children[1].innerText;
						let player = element.children[2].innerText;
						let event_url = base_url + element.children[3].children[0].getAttribute('href');
						let event_name = element.children[3].innerText;
						let rank = element.children[5].innerText;
						let date = element.children[6].innerText;

						data +=
							deck_url +
							'\t' +
							deck_name +
							'\t' +
							player +
							'\t' +
							event_url +
							'\t' +
							event_name +
							'\t' +
							rank +
							'\t' +
							date +
							'\r\n';
					}

					return data;
				});
			} catch (e) {
				success = false;
			}
		} while (success === false);

		logger.info(result);
	}
};

scrape();
