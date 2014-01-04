function load_article(title) {
	var file  = location.hash.replace('#', '');
	var jqxhr = $.get(file);
	var html = "<h1>Cannot Find Article</h1>";
	jqxhr.done(function(data, textStatus){
		html = marked(data);
		$("#content").html(html);
	});
	jqxhr.fail(function(){
		$("#content").html(html);
	});
}
$(window).hashchange( function(){
	load_article();
});
$(window).hashchange();
