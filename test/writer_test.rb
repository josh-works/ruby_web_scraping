require './test/test_helper'

class WriterTest < MiniTest::Test
  def test_it_creates_new_output_file
    Writer.write_to_store("temp.txt", "hi there")
    assert_equal "hi there", File.read('temp.txt')
  end
end