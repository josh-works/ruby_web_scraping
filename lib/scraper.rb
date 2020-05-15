require 'httparty'
require 'nokogiri'

class Scraper
  attr_reader :doc, :links
  def initialize
    @doc = Nokogiri.HTML(open("./practice_documents/hn_what_is_your_blog.html"))
    @links = links
  end
  
  def zero_indent_rows
    doc.css('td[class="ind"] > img[width="0"]')
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