require 'net/http'
require 'json'
require 'flickr.rb'
require 'pry'
countries = ["Brazil","China","South Africa","Bahamas","Germany"]

# flickr = Flickr.new('1e9ca4287cf30cf0fff691d5970fdd21')
# puts flickr.photos.first
# https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=1e9ca4287cf30cf0fff691d5970fdd21&tags=china&format=json


def picture
    # uri = open('https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=1e9ca4287cf30cf0fff691d5970fdd21&' + @query.to_s)
    uri = open('https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=1e9ca4287cf30cf0fff691d5970fdd21&tags=china&format=json')

    list = Net::HTTP.get(uri)
    jlist = JSON.parse(list)
    # https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
    pic = jlist.photo.rand
    id = pic.id
    farm = pic.farm
    secret = pic.secret
    server = pic.server
    puts "farm: #{farm} server: #{server} id: #{id} secret: #{secret}"
    picurl = "https://farm#{farm}.staticflickr.com/#{server}/#{id}_#{secret}.jpg"
    puts picurl
end

if countries[0] === true
    brazil_point
elsif countries[1] === true
    china_point
elsif countries[2] === true
    south_africa_point
elsif countries[3] === true
    bahamas_point
elsif countries[4] === true
    germany_point
end

picture()

