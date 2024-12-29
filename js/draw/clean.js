export const clean = _clean;

function _clean() {
	document.querySelector("section.deals").removeChild(document.querySelector("table.deals"));
	document.querySelector("section.mayor").removeChild(document.querySelector("div.mayor"));
}
