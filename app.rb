require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    @message = session[:message]
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect "/play"
  end

  get '/play' do
    @message = session[:message]
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    params[:attack] == @game.player_2.name ? @game.attack(@game.player_2) : @game.attack(@game.player_1)
    session[:message] = "#{params[:attack]} has been attacked"
    session[:message] = "#{params[:attack]}'s turn"
    redirect "/play"
  end


  run! if app_file == $0
end
