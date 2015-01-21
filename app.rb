require 'bundler'
Bundler.require
# require_relative 'models/brazil_scraper'
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/photo' do
  	@photo = Picture.new
  	@photo = @photo.show
  	puts @photo
  	erb :photo
  end

  	post '/photo' do
		
	end


end