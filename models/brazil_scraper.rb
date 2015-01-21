# require 'nokogiri'
# require 'open-uri'


# class BrazilScraper
# 	def initialize
# 		brazil_html = open("http://brazilwonders.tumblr.com/")
# 		brazil_nokogiri = Nokogiri::HTML(brazil_html)
# 		@pics_array = []
# 		brazil_nokogiri.css('.post.photo').each do |photo|
# 		  @pics_array << photo.children.first.children.attr("src").text
# 		end
# 	end

# 	def random
# 		@pics_array.sample
# 	end


# end