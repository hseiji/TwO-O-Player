require './player'
require './question'
require './score'

def game

  player1 = Player.new("Jack")
  player2 = Player.new("Rose")
  score = Score.new(player1, player2)

  
  while player1.life > 0 && player2.life > 0
    mainPlayer = score.set_turn

    test = Question.new(mainPlayer)
    test.question
  
    # input
    answer = gets.chomp.to_i

    if answer == test.answer
      puts "#{mainPlayer.name} Yes you are correct!"
      mainPlayer.updateLife(0)
    else
      mainPlayer.updateLife(-1)
      puts "#{mainPlayer.name} Seriously? No!"
    end

    score.printScore
  end
  puts "---- GAME OVER ----"
  puts "Good bye!"

end


# Starting the game
game