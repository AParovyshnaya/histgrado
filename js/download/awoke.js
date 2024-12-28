import {download} from "./download.js";

export const awoke = _awoke;

function _awoke() {
	let request = indexedDB.open("mayors");
	console.log(request);
	request.onupgradeneeded = function () {
		const database = download();
	};
	request.onerror = function () {
		console.error("Error", request.error);
	};
	request.onsuccess = function () {
		const database = download().then(database => {});
	}
	request.onblocked = function () {
	}
}