< script type = text / javascript >
    function escapeHtml(unsafe) {
        return unsafe.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/"/g, "&quot;").replace(/'/g, "&#039;");
    }
document.getElementById("load-comment").addEventListener("click", function() {
    fetch('https://{{ page.host }}/api/v1/statuses/{{ page.com_id }}/context').then(function(response) {
        return response.json();
    }).then(function(data) {
        if (data['descendants'] && Array.isArray(data['descendants']) && data['descendants'].length > 0) {
            document.getElementById('mastodon-comments-list').innerHTML = "<summary>Mastodon Comments</summary>";
            data['descendants'].forEach(
                function(reply) {
                    reply.account.display_name = escapeHtml(reply.account.display_name);
                    reply.account.emojis.forEach(emoji => {
                        reply.account.display_name = reply.account.display_name.replace(`:${emoji.shortcode}:`, `<img src="${escapeHtml(emoji.static_url)}" alt="Emoji ${emoji.shortcode}" height="20px" width="20px" />`);
                    });
                    mastodonComment = `<div class="mastodon-comment">
                       <div class="avatar">
                         <img src="${escapeHtml(reply.account.avatar_static)}" height=60 width=60 alt="">
                       </div>
                       <div class="comment-content">
                         <div>
                           <a class="comment-author" href="${reply.account.url}" rel="nofollow">
                             <span>${reply.account.display_name}</span>
                             <span class="disabled">${escapeHtml(reply.account.acct)}</span>
                           </a>
                           <a class="comment-date" href="${reply.uri}" rel="nofollow">
                             ${reply.created_at.substr(0,10)}
                           </a>
                         </div>
                         <div class="mastodon-comment-content">${reply.content}</div> 
                       </div>`
                    document.getElementById('mastodon-comments-list').appendChild(DOMPurify.sanitize(mastodonComment, {
                        'RETURN_DOM_FRAGMENT': true
                    }));
                });
        } else {
            document.getElementById('mastodon-comments-list').innerHTML = "<summary>No comments yet</summary><p>Not comments found</p>";
        }
    });
});
