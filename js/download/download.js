export const download = () => _download();

async function _download() {
	//from https://sql.js.org/#/?id=using-fetch
	const sqlPromise = initSqlJs({
	  locateFile: file => `https://cdnjs.cloudflare.com/ajax/libs/sql.js/1.5.0//${file}`
	});
	const dataPromise = fetch("./database/mayors.db").then(res => res.arrayBuffer());
	const [SQL, buf] = await Promise.all([sqlPromise, dataPromise])
	return new SQL.Database(new Uint8Array(buf));
}