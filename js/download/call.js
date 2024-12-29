import { download } from "./download.js";
import { select } from "../find/select.js";
import { drawDeals } from "../draw/deals.js";
import { drawMayor } from "../draw/mayor.js";

export const call = _call;

function _call(request) {
	let attempt = indexedDB.open("mayors");
	console.log(attempt);
	attempt.onupgradeneeded = function() {
	};
	attempt.onerror = function() {
		console.error("Error", attempt.error);
	};
	attempt.onsuccess = async function() {
		const database = await download();
		const [deals, mayor] = select(request);
		drawDeals(database.exec(deals));
		console.log(mayor)
		drawMayor(database.exec(mayor));
	}
	attempt.onblocked = function() {
	}
}