require 'net/http'
require 'json'
require 'flickr.rb'
require 'pry'

countries = ["china","mexico","switzerland","greenland","yemen"]


# flickr = Flickr.new('1e9ca4287cf30cf0fff691d5970fdd21')
# puts flickr.photos.first



uri = open('https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=1e9ca4287cf30cf0fff691d5970fdd21&tags=china&format=json')
list = Net::HTTP.get(uri)
binding.pry
jlist = JSON.parse(list)
# https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
puts jlist