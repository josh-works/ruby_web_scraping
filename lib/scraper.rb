require 'httparty'
require 'nokogiri'

class Scraper
  attr_reader :doc, :links
  def initialize
    @doc = Nokogiri.HTML(open("./practice_documents/hn_what_is_your_blog.html"))
    @links = links
  end
  
  
  # doc.css('table[class="comment-tree"] > tr')     # Nokogiri::XML::NodeSet
  
  # doc.css('td[class="ind"] > img[width="0"]').
  # finding TDs with 0 indent width
  
  # doc.css('td[class="ind"] > img[width="0"]').first.parent.parent.css('.commtext').to_a
  
  # width="0"]').first.parent.parent.css('.commtext').css('a').to_a
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