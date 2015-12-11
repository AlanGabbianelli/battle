require 'forwardable'

class Game

  extend Forwardable

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name
  def_delegator :player_1, :hp, :player_1_hp
  def_delegator :player_2, :hp, :player_2_hp
  def_delegator :current_player, :name, :current_player_name
  def_delegator :opponent, :name, :opponent_name

  attr_reader :player_1, :player_2, :current_player, :message

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def attack(player)
    @message = "#{opponent_name} has been attacked by #{current_player_name}!"
    player.deduct_hp
  end

  def switch_turn
    current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

  def opponent
    current_player == player_1 ? player_2 : player_1
  end
end
