require 'bundler'
Bundler.require
# require_relative 'models/brazil_scraper'
require_relative 'models/model.rb'
require_relative 'models/score.rb'
class MyApp < Sinatra::Base
  set :sessions, true

  get '/' do
   session[:points] = Score.new
   erb :index
  end

  get '/photo' do
    @photo = Picture.new
    @photo = @photo.show
    puts @photo
    erb :photo
  end

    post '/photo' do
      paramssession[:points]
    end


end