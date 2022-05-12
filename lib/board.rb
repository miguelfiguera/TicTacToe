class GameBoard
    WINNING_LINES = [[0,1,2][3,4,5][6,7,8][0,4,8][2,4,6][0,3,6][1,4,7][2,5,8]]
    attr_reader :positions
    def initialize
        @positions = [1,2,3,4,5,6,7,8,9]
    end
    
    def the_board
        puts <<-HEREDOC

        #{@positions[0]}|#{@positions[1]}|#{@positions[2]}
        #{@positions[3]}|#{@positions[4]}|#{@positions[5]}
        #{@positions[6]}|#{@positions[7]}|#{@positions[8]}

        HEREDOC
    end

    def players_move(number,symbol)
        @positions[number] = symbol
    end

    #methods for:
    #a full board with no winners
    #a winning combination
    #to begin a new game when the current one finish
    #structure of the game

end