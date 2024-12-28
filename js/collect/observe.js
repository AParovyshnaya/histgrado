import { interview } from "./collect.js";

export const observe = (event) => _observe(event);

function _observe(event) {
	event.preventDefault();
	const data = interview();
	console.log(data);
	//add deals properties

}