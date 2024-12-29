import { stand } from "./deals.js";

export const drawMayor = (data) => _mayor(data);

function _mayor(data) {
	const description = container();
	const info = reform(data[0]);
	content((is("surname") + is("name", " ") + is("patronymic", " ") + is("grade", ", ")), "h2");
	if (has("pedigree")) { content("Происхождение:" + is("pedigree", " ", " неизвестно", true))	}
	if (has("friend")) { content("Общеизвестный приятель:" + is("pedigree", " ", " отсутствует", true))	}
	if (!has("end") && !has("edate")) { content(`Причина окончания правления над Глуповым (${is("edate")}):` + is("end", " ", "неизвестна", true)) }
	else if (!has("end")) { content("Причина окончания правления над Глуповым:" + is("end", " ", " неизвестна", true)) }
	else if (!has("edate")) { content("Дата окончания правления над Глуповым:" + is("edate", " ", " увы, неизвестна")) }
	function is(property, sepator = "", fill = "", tidy = false, direction = false) {
		return has(property) ? fill : sepator + (tidy ? stand(info[property], direction) : info[property]);
	}

	function has(property) {
		return info[property] == undefined;
	}

	function content(content, tag) {
		description.append(note(content, tag));
	}

	parent(description);
}

function parent(child) {
	document.querySelector("section.mayor").append(child);
}

function container() {
	const article = document.createElement("div");
	article.classList.add("mayor");
	return article;
}

function reform(data) {
	let cosy = {};
	for (let i = 0; i < data.columns.length; i++) {
		cosy[data.columns[i]] = data.values[0][i];
	}
	return cosy;
}

function note(data, tag = "div") {
	const note = document.createElement(tag);
	note.innerText = data;
	return note;
}