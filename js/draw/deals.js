export const drawDeals = (info) => _deals(info);
export const stand = (text, up = true) => _stand(text, up);
function _deals(info) {
	const table = document.createElement("table");
	table.classList.add("deals");
	table.append(head(info[0].columns));
	table.append(body(info[0].values));
	document.querySelector("section.deals").append(table)
}

function head(elements) {
	const head = document.createElement("thead");
	head.append(row(elements));
	return head;
}

function body(deals) {
	const body = document.createElement("tbody");
	deals.forEach(deal => body.append(row(deal)));
	return body;
}

function row(data) {
	const row = document.createElement("tr");
	data.forEach(item => row.append(td(item)));
	return row;
}

function td(data) {
	const field = document.createElement("td");
	field.textContent = stand(data);
	return field;
}

function _stand(text, up = true) {
	return typeof text == "string" ? (up ? text.charAt(0).toUpperCase() : text.charAt(0).toLowerCase()) + text.slice(1) : text;
}
