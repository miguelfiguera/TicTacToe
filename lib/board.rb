class GameBoard
    WINNING_LINES = [[1,2,3],[3,4,5],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    attr_accessor :positions
    def initialize
        @positions = [0,1,2,3,4,5,6,7,8,9]
    end
    
    def board
        puts <<-HEREDOC

        #{@positions[1]}|#{@positions[2]}|#{@positions[3]}
        #{@positions[4]}|#{@positions[5]}|#{@positions[6]}
        #{@positions[7]}|#{@positions[8]}|#{@positions[9]}

        HEREDOC
    end

    def players_move(number, symbol)
        @positions[number] = symbol
    end

    def game_over?
        WINNING_LINES.any? do |line|
          if  line.all? {|marker| marker==player_one.symbol} == true
            puts "#{player_one} wins the game!"
          elsif line.all? {|marker| marker==player_two.symbol} == true
            puts "#{player_two} wins the game!"
          end
        end
    end
end