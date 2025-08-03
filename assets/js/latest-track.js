async function getLatestListen(username) {
	const url = `https://api.listenbrainz.org/1/user/${username}/listens?count=1`;
	const container = document.getElementById('latest-listen');

	try {
		const response = await fetch(url);
		const data = await response.json();

		console.log(data); // Log the raw JSON to check its structure

		if (data.payload && data.payload.listens && data.payload.listens.length > 0) {
			const listen = data.payload.listens[0];
			const track = listen.track_metadata.track_name;
			const artist = listen.track_metadata.artist_name;
			const albumArt = listen.track_metadata.album_art_url;
			const listenedAt = new Date(listen.listened_at * 1000); // Convert timestamp
			const dateFormatted = listenedAt.toLocaleString();

			// Build the content in the format similar to your bash script
			container.innerHTML = `
	  <div><b>Last listened track:</b></br>
	  <i>${track}</i> by <i>${artist}</i>. <br>${dateFormatted}</div>
	`;
			if (albumArt) {
				container.innerHTML += `<p><strong>Album Art:</strong></p>
	<img src="${albumArt}" alt="Album Art" style="width: 100px; height: 100px; border-radius: 8px; border: 2px solid #ddd;">
	`
			}
			else{

			}
		} else {
			container.innerHTML = `<p>No recent listens found.</p>`;
		}
	} catch (error) {
		console.error("Error fetching listen:", error);
		container.innerHTML = `<p>Failed to load latest listen.</p>`;
	}
}
getLatestListen("joel76");
