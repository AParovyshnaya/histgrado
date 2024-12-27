export const report = message => _report(message);

function _report(message) {
	deploy(message.type, message.text);
}

function deploy(type, text) {
	switch (type) {
		case "error":
			console.error(text);
			break;
		case "warning":
			console.warn(text);
			break;
		case "info":
			console.info(text);
			break;
	}
}