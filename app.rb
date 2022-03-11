require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $game.add_new_player(params[:player1_name])
    $game.add_new_player(params[:player2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.players.first
    @player_2 = $game.players.last
    erb :play
  end

  get '/attack' do
    @player_1 = $game.players.first 
    @player_2 = $game.players.last
    $game.attack(@player_2)
    erb :attack
  end
  
  run! if app_file == $0
end 
