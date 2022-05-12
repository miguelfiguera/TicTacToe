require_relative "display.rb"

class Game
    include "Display"
    def initialize
        @board = Board.new
        @player_one = nil
        @player_two = nil
        @current_player = nil
    end

    def creating_players(number,player)
        create_a_player(number)
        name=gets.chomp 
        marker(number)
        symbol=gets.chomp
        player=Player.new(name,symbol) 
    end

    def game_setup 
        creating_players(1,player_1)
        creating_players(2,player_2) 

end
