async function fetchListen(url) {
	try {
		const response = await fetch(url);
		const data = await response.json();
		return data.payload.listens[0] || null;
	}
	catch (err){
		console.error("Unable to fetch", err);
		return null;
	}
}

function printHtml(container, content){
	container.innerHTML = content;
}

async function getListen(username) {
	const container = document.getElementById('latest-listen');
	const currentUrl = `https://api.listenbrainz.org/1/user/${username}/playing-now`;
	const current = await fetchListen(currentUrl);
	if (current) {
		const track = current.track_metadata.track_name;
		const artist = current.track_metadata.artist_name;
		return printHtml(container, `<b>Currently listening:</b></br>🎵 <i>${track}</i> by <i>${artist}</i>.`);
	}
	const latestUrl = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
	const latest = await fetchListen(latestUrl);

	if (latest) {
		const track = latest.track_metadata.track_name;
		const artist = latest.track_metadata.artist_name;
		const listenedAt = new Date(latest.listened_at * 1000); // Convert timestamp
		const dateFormatted = listenedAt.toLocaleString();
		return printHtml(container, `<b>Last listened track:</b></br>🎶 <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}`);
	}
	printHtml(container, `<b>No music found</b>`);
}

getListen('joel76');
