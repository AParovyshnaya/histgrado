export const interview = _interview;

function collect(parent) {
	const collection = {};
	Array.from(parent.elements)
		.filter(field => !!field.name)
		.forEach(field => collection[field.name] = field.type == "checkbox" ? field.checked : field.value);
	return collection;
}

//add try/catch
function interrogate(element) {
	const report = {};
	report[element.name] = element.value;
	return report;
}

function _interview() {
	return {
		...interrogate(document.getElementById("mayor")),
		"mayor_properties": collect(document.getElementById("mayor_properties"))
	}
}