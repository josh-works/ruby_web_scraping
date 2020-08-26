class Scraper
  attr_reader :all_links, 
              :base_url,
              :doc,
              :thread_id,
              :current_page
  
  def initialize
    puts  "opening document and scraping links"
    @base_url = "https://news.ycombinator.com/item?id=22800136&p="
    @current_page = 1
    @all_links = []
  end
  
  def scrape_from_all_pages_in_thread
    @doc = html_by_page(current_page)
    
    if last_page_in_thread?
      scrape_links_from_page
      return
    else
      scrape_links_from_page
      @current_page += 1
      scrape_from_all_pages_in_thread
    end
  end
  
  private
  
  def html_by_page(page)
    puts "getting page #{page}"
    Nokogiri::HTML(open(base_url + page.to_s))
  end
  
  
  def last_page_in_thread?
    @doc.css('.morelink').empty?
  end
  
  def scrape_links_from_page
    puts links[0..5]
    @all_links.concat(links)
    
  end
  
  def zero_indent_rows
    @doc.css('td[class="ind"] > img[width="0"]')
  end
  
  def comments_with_zero_indent_siblings
    zero_indent_rows.map do |td| 
      td.parent.parent.css('.commtext').css('a')
    end
  end
  
  def links
    comments_with_zero_indent_siblings.map do |a|
      a.css('a').map do |link| 
        link.attribute('href').value 
      end
    end.flatten
  end
end