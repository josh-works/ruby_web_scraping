require './lib/helper.rb'

desc 'scrape hacker news and save the links'
task :scrape_hn do
  puts "starting :scrape_hn rake task"
  scraper = Scraper.new
  scraper.scrape_from_all_pages_in_thread
  Writer.write_to_store('links.txt', scraper.all_links)
end