require 'bundler'
Bundler.require
# require_relative 'models/brazil_scraper'
require_relative 'model.rb'
class MyApp < Sinatra::Base

  get '/' do
    
    erb :index

  end

end