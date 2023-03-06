require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara'
require './lib/city_ranking'

class TeleportRanking < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end
    
    configure do
        set :city_ranking, CityRanking.new
    end

    get '/' do
        @city_ranking = settings.city_ranking
        erb :index
    end

    post '/continent_select' do
        @city_ranking = settings.city_ranking
        @city_ranking.continent_select(params[:continents])
        redirect '/'
    end
end