require_relative "board.rb"
require_relative "game.rb"
require_relative "Players.rb"
require_relative "text_module.rb"

def play_game
    game = Game.new
    game.play
    repeat_game
end

def repeat_game
    puts "You wanna go again? y/n"
    answer=gets.chomp.downcase
    if answer == "y"
        play_game
    else
        puts "Thank you for playing"
    end
end

    play_game