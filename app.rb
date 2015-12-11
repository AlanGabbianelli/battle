require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    game
    erb(:play)
  end

  get '/attack' do
    game.attack(game.opponent)
    game.switch_turn
    redirect '/play'
  end

  helpers do
    def game
      @game ||= $game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
