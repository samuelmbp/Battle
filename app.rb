require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1_name]
    session[:player2] = params[:player2_name]
    redirect to('/play')
  end

  get '/play' do
    p session
    @player_1 = session[:player1]
    @player_2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end 
