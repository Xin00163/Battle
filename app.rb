require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session["player_1_name"] = params[:player_1_name]
    session["player_2_name"] = params[:player_2_name]
    redirect "/play"
  end

  get '/play' do
    @player_1_name = session["player_1_name"]
    @player_2_name = session["player_2_name"]
    erb(:play)
  end

  post '/attack' do
    def attack
      puts "#{player_1_name} attacked #{player_2_name}"
    end
    attack
    redirect '/play/attack'
  end

  get '/play/attack' do
    erb(:attack)
  end

  run! if app_file == $0
end
