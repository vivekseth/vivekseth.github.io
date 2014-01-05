function get_article_list() {
	var jqxhr = $.get("article_list.txt");
	jqxhr.done(function(data, textStatus){
		var lines = data.split("\n");
		var html = '';
		for (var i=0; i<lines.length; i++) {
			html += listing_html(lines[i]);
		}
		//html should be complete now
		$("#content").html(html);
	});
	jqxhr.fail(function(){
		$("#content").html("<p>ERROR</p>");
	});
}
function listing_html(listing) {
	temp = listing.substring(1);
	path = "/articles.html#" + temp;
	name = temp.replace('_', ' ');
	html = "<div class='listing'><a href='"+path+"'><p>"+name+"</p></a></div>";
	return html;
}
get_article_list();
