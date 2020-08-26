class Writer
  def self.write_to_store(file_name = "temp.txt", content)
    formatted_content = content.join("\n")
    
    puts "writing #{content.count} URLs to #{file_name}"
    File.open(file_name, 'w') do |file|
      file.write(formatted_content)
    end
  end
end