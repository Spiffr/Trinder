require 'bundler'
Bundler.require
# require_relative 'models/brazil_scraper'
require_relative 'models/model.rb'
require_relative 'models/score.rb'
class MyApp < Sinatra::Base
  set :sessions, true

  get '/' do
   session["points"] = Score.new
   erb :index
  end

  get '/photo' do
    @picture = Picture.new
    @photo = @picture.show
    @country = @picture.country
    puts @photo
    erb :photo
  end

    post '/photo' do
      puts params
      if params[:country] == "Bahamas"
        session["points"].bahamas_point
      elsif params[:country] == "Brazil"
        session["points"].brazil_point
      elsif params[:country] == "South_Africa"
        session["points"].south_africa_point
      elsif params[:country] == "China"
        session["points"].china_point
      elsif params[:country] == "Germany"
        session["points"].germany_point
      end
      puts session["points"].countries
      redirect '/photo'
    end

    get '/results' do
      @final = session["points"].countries
      erb :results
    end



end