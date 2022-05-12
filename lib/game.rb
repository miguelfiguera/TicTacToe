require_relative "text_module.rb"

class Game
    include "Text"
    attr_reader :player_one, :player_two, :board, :current_player
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

    def game_prep
        @player_one=creating_players(1,player_1)
        @player_two=creating_players(2,player_2)
    end

    def full_board?
        @positions.all? { |positions| positions =~ /[^0-9]/ }            
        draw
    end

    def valid_move(number)
        @positions[number]==number
    end

    def play_turns
        @current_player = @player_one
    end

    def switch_current_player
        if @current_player== @player_one
            player_two
        else
            player_one
        end
    end

end
