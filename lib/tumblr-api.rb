require 'open-uri'
require 'net/http'
require 'cgi'
require 'pp'

TUMBLR_READ_APIv1 = "http://#{base-hostname}.tumblr.com/api/read"
TUMBLR_BASE_API = "api.tumblr.com/v2/"
TUMBLR_PAGES = "?start=#{start}&numb=#{final}"
base-hostname="paulwanless3"
tumblr_options = {}

Tumblr_OAuth_Key="?api_key=JDZInwsWYidlUMnQOSOKZj7lbVohvioccsBvaRc1vDYKdtWROt"
response = Net::HTTP.get_response(URI.parse('http://api.tumblr.com/v2/blog/paulwanless3.tumblr.com/info#{Tumblr_OAuth_Key}'))
  case response
  when Net::HTTPSuccess
    puts response.body
  else
    puts response.error!
  end
  

def initialize(base_hostname)
  
end