require "pry"
require_relative "game.rb"
require_relative "player.rb"

game_1 = Game.new
game_1.intro

binding.pry

game_1.game_play


