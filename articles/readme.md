# Welcome To My Blog!

This is an extremely simple blog system I have created for personal use. It uses AJAX to load a [Markdown](http://daringfireball.net/projects/markdown/) file, and uses [marked.js](https://github.com/chjj/marked) to render markdown files as HTML in order to display them. 

URLs to an article are formatted in the following way: `viveseth.github.io/#path/to/article.md`. It may appear that there are many different HTML pages, but actually there is only 1: `index.html`. When a url is loaded with a hash, index.html sends an AJAX request to the path indicated. On success it reads the markdown text, parses it, and puts the resultant HTML into a div. On failure, it simply puts an error message in to the div. 

In this way I have, I have created an extremely simple and very flexible blog system that has very few requirements. To host a blog using this system, all you need is a basic server and a text editor. 

To read this blog, all you need is a _semi_ modern browser, with the ability to make AJAX calls. Even if your browser sucks, and does not support AJAX, you can always read the articles in their raw format by just removing the '#' from the URL.

Not only is the blog easy to use, it is also very accessibly to almost anyone. 

# Why Did I Create It?

I have been wanting to start a blog for sometime now, but i have always been daunted by all the features other blog systems had. When trying to start a blog with one of these systems, I spent more time customizing them, than I did actually writing. This time around I wanted something very minimal to help me focus on my writing. Because I am literally using only ViM and git to write and publish these blog posts, I am hoping there will be less to discract me.  

 
