import {report} from "../report/report.js";
import {Error} from "../report/message.js";


export const ask = _ask;

function _ask() {
	let request = window.indexedDB.open("mayors");
	request.onerror = implore;
}

function implore() {
	report(Error("User did not get permission for IndexedDB. We can not work"));
}