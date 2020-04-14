class Writer
  def self.write_to_store(file_name = "temp.txt", content)
    File.open(file_name, 'w') do |file|
      file.write(content)
    end
  end
end