async function getLatestListen(username) {
	const url = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
	const container = document.getElementById('latest-listen');
	try {
		const response = await fetch(url);
		const data = await response.json();
		if (data.payload && data.payload.listens && data.payload.listens.length > 0) {
			const listen = data.payload.listens[0];
			const track = listen.track_metadata.track_name;
			const artist = listen.track_metadata.artist_name;
			const listenedAt = new Date(listen.listened_at * 1000); // Convert timestamp
			const dateFormatted = listenedAt.toLocaleString();
			container.innerHTML = `
	  <b>Last listened track:</b></br>
	  <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}
	`;
		} else {
			container.innerHTML = `<p>No recent listens found.</p>`;
		}
	} catch (error) {
		console.error("Error fetching listen:", error);
		container.innerHTML = `<p>Failed to load latest listen.</p>`;
	}
}
getLatestListen("joel76");
