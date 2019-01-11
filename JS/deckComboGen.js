const log4js = require('log4js');
log4js.configure({
	appenders: {
		out: {
			type: 'file',
			filename: 'deckCombos.csv',
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
const logger = log4js.getLogger();

var size;
var mins;
var maxs;
var minAverageMana;
var maxAverageMana;
var minLandsToAverageMana;
var maxLandsToAverageMana;

function combosFromParameters(parameters, minAm, maxAm, minLaAm, maxLaAm) {
	size = parameters.length;
	mins = parameters.map(p => p[0]);
	maxs = parameters.map(p => p[p.length - 1]);
	minAverageMana = minAm;
	maxAverageMana = maxAm;
	minLandsToAverageMana = minLaAm;
	maxLandsToAverageMana = maxLaAm;

	for (const zero of parameters[0]) {
		var runningTotal = zero;
		var nextPosition = 1;

		if (exceeds(runningTotal, nextPosition)) {
			break;
		}

		if (fallsShort(runningTotal, nextPosition)) {
			continue;
		}

		var upToZero = "";
		upToZero += zero + "\t";

		for (const one of parameters[1]) {
			runningTotal += one;
			nextPosition += 1;

			if (exceeds(runningTotal, nextPosition)) {
				runningTotal -= one;
				nextPosition -= 1;
				break;
			}

			if (fallsShort(runningTotal, nextPosition)) {
				runningTotal -= one;
				nextPosition -= 1;
				continue;
			}

			var upToOne = upToZero;
			upToOne += one + "\t";

			for (const two of parameters[2]) {
				runningTotal += two;
				nextPosition += 1;

				if (exceeds(runningTotal, nextPosition)) {
					runningTotal -= two;
					nextPosition -= 1;
					break;
				}

				if (fallsShort(runningTotal, nextPosition)) {
					runningTotal -= two;
					nextPosition -= 1;
					continue;
				}

				var upToTwo = upToOne;
				upToTwo += two + "\t";

				for (const three of parameters[3]) {
					runningTotal += three;
					nextPosition += 1;

					if (exceeds(runningTotal, nextPosition)) {
						runningTotal -= three;
						nextPosition -= 1;
						break;
					}

					if (fallsShort(runningTotal, nextPosition)) {
						runningTotal -= three;
						nextPosition -= 1;
						continue;
					}

					var upToThree = upToTwo;
					upToThree += three + "\t";

					for (const four of parameters[4]) {
						runningTotal += four;
						nextPosition += 1;

						if (exceeds(runningTotal, nextPosition)) {
							runningTotal -= four;
							nextPosition -= 1;
							break;
						}

						if (fallsShort(runningTotal, nextPosition)) {
							runningTotal -= four;
							nextPosition -= 1;
							continue;
						}

						var upToFour = upToThree;
						upToFour += four + "\t";

						for (const five of parameters[5]) {
							runningTotal += five;
							nextPosition += 1;

							if (exceeds(runningTotal, nextPosition)) {
								runningTotal -= five;
								nextPosition -= 1;
								break;
							}

							if (fallsShort(runningTotal, nextPosition)) {
								runningTotal -= five;
								nextPosition -= 1;
								continue;
							}

							var upToFive = upToFour;
							upToFive += five + "\t";

							for (const six of parameters[6]) {
								runningTotal += six;
								nextPosition += 1;

								if (exceeds(runningTotal, nextPosition)) {
									runningTotal -= six;
									nextPosition -= 1;
									break;
								}

								if (fallsShort(runningTotal, nextPosition)) {
									runningTotal -= six;
									nextPosition -= 1;
									continue;
								}

								var upToSix = upToFive;
								upToSix += six + "\t";

								for (const land of parameters[7]) {
									runningTotal += land;
									nextPosition += 1;

									var all = upToSix + land;

									if (runningTotal == 60) {
										if (withinBounds(zero, one, two, three, four, five, six, land)) {
											logger.info(all);
										}
									}

									runningTotal -= land;
									nextPosition -= 1;
								}

								runningTotal -= six;
								nextPosition -= 1;
							}

							runningTotal -= five;
							nextPosition -= 1;
						}

						runningTotal -= four;
						nextPosition -= 1;
					}

					runningTotal -= three;
					nextPosition -= 1;
				}

				runningTotal -= two;
				nextPosition -= 1;
			}

			runningTotal -= one;
			nextPosition -= 1;
		}
	}
}

function exceeds(runningTotal, nextPosition) {
	var subtotal = 0;

	for (var i = nextPosition; i < size; i++) {
		subtotal += mins[i];
	}

	return runningTotal + subtotal > 60;
}

function fallsShort(runningTotal, nextPosition) {
	var subtotal = 0;

	for (var i = nextPosition; i < size; i++) {
		subtotal += maxs[i];
	}

	return runningTotal + subtotal < 60;
}

function withinBounds(zeroes, ones, twos, threes, fours, fives, sixes, lands) {
	manaTotal = ones + twos * 2 + threes * 3 + fours * 4 + fives * 5 + sixes * 6;
	cardTotal = zeroes + ones + twos + threes + fours + fives + sixes;
	amc = manaTotal / cardTotal;
	laToAmc = lands / amc;

	return amc >= minAverageMana && amc <= maxAverageMana && laToAmc >= minLandsToAverageMana && laToAmc <= maxLandsToAverageMana;
}

combosFromParameters([[0, 1, 2], [7, 8, 9, 10, 11, 12, 13, 14, 15, 16], [8, 9, 10, 11, 12, 13], [4, 5, 6, 7, 8, 9], [1, 2, 3, 4, 5, 6], [0, 1, 2, 3, 4], [0, 1], [19, 20, 21, 22, 23, 24]], 1.97436, 2.75, 8.18269, 10.8);
