export function Error(text) {
	this.type = "error";
	this.text = text;
}
Error.prototype = Message.prototype;

export function Info(text) {
	this.type = "info";
	this.text = text;
}
Info.prototype = Message.prototype;


export function Warning(text) {
	this.type = "warning";
	this.text = text;
}
Info.prototype = Message.prototype;

function Message(type, text) {
	this.type = type;
	this.text = text;
}