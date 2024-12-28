export const drawDeals = (info) => _drawDeals(info);

function _drawDeals(info) {
	const table = document.querySelector("table.deals");
	table.append(head(info[0].columns));
	table.append(body(info[0].values));
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
	console.log(data);
	const field = document.createElement("td");
	field.textContent = data;
	return field;
}