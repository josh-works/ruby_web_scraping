require 'sinatra'

get '/' do
  url = get_random_url
  erb :layout, locals: { random_url: url}
end

private

def get_random_url
  doc = File.new("./links.txt", 'r').read
  random_link = doc.split.sample
  return random_link
end