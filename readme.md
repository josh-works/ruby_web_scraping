I wanted a little learning project, so I decided on:

> Scrape all links from [Ask HN: What is your blog and why should I read it?](https://news.ycombinator.com/item?id=22800136)

Get it published online, so you can visit you get a random blog, or random blog post. 

So far, I've got a web scraper together that scrapes the top-level comments of the above blog post and saves them to `links.txt`.

Next, I'll get some basic routing in place with Sinatra, and put it on Heroku. 

Should be a cool little thing. 

-----------------------

### Misc project notes

_These are notes I've taken, ordered by `time thought occurred to Josh`, that I'll use to guide myself in building additional resources/drills_

Do this kind of scraping three times total, save outputs to a text file _or_ database. 

### Tutorials and Guide's _I Have Created_ as a result of this project

#### 1. [Nokogiri obstacle course](https://github.com/josh-works/intermediate_ruby_obstacle_course/tree/master/nokogiri_obstacle_course) 

Nokogiri was such a big part of this, but I had such little knowledge, so I ended up creating this, which will be one of eventually many pieces of `intermediate_ruby`

I used my new Nokogiri knowledge to get this list of links:

![links!](/images/links_01.jpg)


link other effort about this: 

https://www.dannysalzman.com/2020/04/08/analyzing-hn-readers-personal-blogs



##### Potential Extensions

- dealing with feature flags in the real world? https://boringrails.com/articles/feature-flags-simplest-thing-that-could-work/
- Redis obstacle course? (ties into feature flags)

##### Sinatra Usage

- [live reloading](https://stackoverflow.com/questions/1247125/how-to-get-sinatra-to-auto-reload-the-file-after-each-change) 

Boot app with `rerun 'ruby app.rb'`

[“No Procfile detected” in Sinatra app heroku push](https://stackoverflow.com/questions/24223476/no-procfile-detected-in-sinatra-app-heroku-push)


