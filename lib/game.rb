require_relative "text_module.rb"

class Game
    include Text
    attr_reader :player_one, :player_two, :board, :current_player
    def initialize
        @board = GameBoard.new
        @player_one = nil
        @player_two = nil
        @current_player = nil
    end

    def play
        game_prep
        board.board
        turn_loop
        switch_current_player
    end

    def turn_loop
        @current_player=player_one
        until full_board?
            play_turns(current_player)
            break board.game_over?
            @current_player = switch_current_player
        end
    end
    
    
    def creating_players(number)
        number=number
        create_a_player(number)
        name=gets.chomp 
        marker(number)
        symbol=gets.chomp
        player=Player.new(name,symbol) 
    end

    def game_prep
        @player_one=creating_players(1)
        @player_two=creating_players(2)
    end

    def full_board?
    @positions.all? { |positions| positions =~ /[^0-9]/ }            
    end

    def valid_move(number)
        @positions[number]==number.between(1,9)
    end

    def play_turns(current_player)
        turn(current_player.name)
        choose_position
        number = gets.chomp
        symbol = current_player.symbol
        if valid_move(number) == true
            players_move(number,current_player.symbol)
            board.board
        else
            puts invalid
            board.board
            play_turns(current_player)
        end
    end


    def switch_current_player
        if @current_player== @player_one
            player_two
        else
            player_one
        end
    end

end
