require 'bundler'
Bundler.require
# require_relative 'models/brazil_scraper'
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    @picture = Picture.new
    erb :index

  end

end