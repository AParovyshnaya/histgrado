export const download = () => _download();

async function _download() {
	//from https://sql.js.org/#/?id=using-fetch
	const sqlPromise = initSqlJs({
	  locateFile: file => `.http://127.0.0.1:8084/${file}`
	});
	const dataPromise = fetch("./database/mayors.sqlite").then(res => res.arrayBuffer());
	const [SQL, buf] = await Promise.all([sqlPromise, dataPromise])
	return new SQL.Database(new Uint8Array(buf));
}