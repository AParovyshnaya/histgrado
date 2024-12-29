export const select = (form) => _select(form)

function _select(interview) {
	const request = [`SELECT deals.mayor, deals.imagined, deals.idate, deals.personality, deals.historical, deals.hdate  FROM deals WHERE (deals.mayor = '${interview.mayor}');`,
	`SELECT mayors.surname, ${merge(interview.mayors_properties)} FROM mayors WHERE (mayors.surname = '${interview.mayor}');`
	];
	return request;
}

function merge(data) {
	let result = "";
	for (let [key, value] of Object.entries(data)) {
		if (value) { result += `mayors.${key}, ` };
	}
	return result.slice(0, -2);
}
