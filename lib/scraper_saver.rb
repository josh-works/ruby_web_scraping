class ScraperSaver
  def self.save
    content = ScraperSaver.new.cleaned
    Writer.write_to_store("links.txt", content)
  end
  
  attr_reader :content_to_save, :cleaned
  def initialize
    @content_to_save = Scraper.new.links
    @cleaned = cleaned_content
  end
  
  def cleaned_content
    content_to_save.join("\n")
  end
end