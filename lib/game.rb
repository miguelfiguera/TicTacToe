require_relative "display.rb"

class Game
    include "Display"
    def initialize
        @board = Board.new
        @player_one = nil
        @player_two = nil
        @current_player = nil
    end

    def create_players
        name=gets.chomp 
        symbol=gets.chomp
        player_1=Player.new(name,symbol) 
    end

    
end
