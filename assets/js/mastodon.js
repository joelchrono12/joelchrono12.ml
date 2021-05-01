  function escapeHtml(unsafe) {
      return unsafe.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");
  }
  document.getElementById("load-comment").addEventListener("click", function() {
      fetch('https://{{ page.host }}/api/v1/statuses/{{ page.com_id }}/context').then(function(response) {

          return response.json();
      }).then(function(data) {
          if (data.descendants && data.descendants.length > 0) {
              document.getElementById('mastodon-comments-list').innerHTML = "<summary>Mastodon Comments</summary>";
            let response = data.descendants;

            for ( var i = 0; i < response.length; i++ ){
              document.getElementById('mastodon-comments-list').appendChild(createCommentEl(response[i]));

            }
          }
        if (0 == response.length){
          document.getElementById('no-mt-comments').style.display = 'block';


        }
        else {
              document.getElementById('mastodon-comments-list').innerHTML = "<summary>No comments yet</summary><p>Not comments found</p>";
          }
      });
  });

function createCommentEl( reply ){
  	let user = document.createElement('div');
		user.classList.add('mastodon-comment')
		user.setAttribute('href', reply.account.url)
		user.classList.add('user');

		let userAvatar = document.createElement('img');
		userAvatar.classList.add('avatar');
		userAvatar.setAttribute('src',reply.account.avatar_static);
		user.appendChild(userAvatar);

		let commentLink = document.createElement('a');
		commentLink.setAttribute('href',reply.url);
		commentLink.classList.add('comment-url');
		commentLink.innerHTML = '#' + reply.id + ' - ' + reply.created_at;
		user.appendChild( commentLink);

		let commentContents = document.createElement('div');
		commentContents.classList.add('mastodon-comment-content')
		commentContents.innerHTML = reply.content;

		let comment = document.createElement('div');
		comment.classList.add( 'comment-content' );
		comment.setAttribute( 'data-created', reply.created_at );
		comment.setAttribute( 'data-author-avatar', reply.user.avatar_url );
		comment.setAttribute( 'data-user-url', reply.user.url );

		user.appendChild( comment );
		comment.appendChild( commentLink );
		comment.appendChild( commentContents );
		return user;
}
