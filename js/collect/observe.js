import { interview } from "./collect.js";
import { notice } from "../report/notice.js";
import { call } from "../download/call.js";
import { clean } from "../draw/clean.js";

export const observe = (event) => _observe(event);

async function _observe(event) {
	event.preventDefault();
	notice();
	clean();
	call(interview());
	notice();
}