I wanted a little learning project, so I decided on:

> Scrape all links from [Ask HN: What is your blog and why should I read it?](https://news.ycombinator.com/item?id=22800136)

Get it published online, so you can visit you get a random blog, or random blog post. 

So far, I've got a web scraper together that scrapes the top-level comments of the above blog post and saves them to `links.txt`.

Next, I'll get some basic routing in place with Sinatra, and put it on Heroku. 

Should be a cool little thing. 

This is the list I've got together so far:

![links!](/images/links_01.jpg)







-----------------------

### Misk project notes

Do this kind of scraping three times total, save outputs to a text file _or_ database. 

link other effort about this: 

https://www.dannysalzman.com/2020/04/08/analyzing-hn-readers-personal-blogs

Nokogiri will be such a critical effort, I ended up creating this [nokogiri_obstacle_course](https://github.com/josh-works/intermediate_ruby_obstacle_course/tree/master/nokogiri_obstacle_course), which will be one of eventually many pieces of `intermediate_ruby`


Almost done with Nokogiri piece.

Extensions:

- dealing with feature flags in the real world? https://boringrails.com/articles/feature-flags-simplest-thing-that-could-work/
- Redis obstacle course? (ties into feature flags)
- 