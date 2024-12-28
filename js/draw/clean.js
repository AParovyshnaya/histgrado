export const clean = _clean;

function _clean() {
	const table = document.querySelector("table.deals");
	const children = table.children;
	if (children.length != 0) {
		console.log(children);
		for (let child of children) {
			table.removeChild(child);
		}
	}
}