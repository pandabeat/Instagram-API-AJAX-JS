require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'sinatra/json'
require 'json'
 
# sets the view directory correctly (to make it work with gists)
set :views, Proc.new { File.dirname(__FILE__) } 
 
 
get '/' do
  erb :json
end
 
get '/jsonp' do
  erb :jsonp
end
 
get '/sample' do
  "hello world <a href='#'>Another link has appeared</a>"
end

get '/visit' do
	open("http://instagram.com/developer/endpoints/tags/#get_tags_media_recent") do |f|
    response = {
      :content => JSON.parse(f.read),
    }
    return json response
  end
end
 
# get '/acronym/:acronym' do
 
#   open("http://www.nactem.ac.uk/software/acromine/dictionary.py?sf=#{params[:acronym]}") do |f|
#       response = {
#         :content => JSON.parse(f.read),
#       }
 
#       return json response
#   end
# end