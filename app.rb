require 'bundler'
Bundler.require
require_relative 'models/brazil_scraper'

class MyApp < Sinatra::Base

  get '/' do
    
    erb :index

  end

end