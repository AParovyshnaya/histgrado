import { download } from "./download.js";
import { select } from "../find/select.js";
import { drawDeals } from "../draw/deals.js";

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
		const [mayor, deals] = select(request);
		drawDeals(database.exec(mayor));
		drawDeals(database.exec(deals));
	}
	attempt.onblocked = function() {
	}
}