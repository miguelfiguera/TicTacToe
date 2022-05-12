module Text
    def intro
        puts "Welcome to Tic-Tac-Toe"
    end

    def create_a_player(number)
        puts "Choose your name, Player #{number}"
    end

    def marker(number)
        puts "Now, choose a marker player #{number}"
    end

    def turn(current_player)
        puts "It is your turn #{current_player}"
    end

    def invalid
        puts "Nope, that was an invalid move, please choose again"
    end

    def winner(player)
        puts "Congratz! You have won the game #{player}"
    end

end

