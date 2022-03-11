require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player1_name])
    $player_2 = Player.new(params[:player2_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_2_health = $player_2.health
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.reduce_health(@player_2)
    erb :attack
  end
  
  run! if app_file == $0
end 
