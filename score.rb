class Score

  attr_accessor :player1, :player2

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def set_turn
    if !player1.turn && !player2.turn
      player1.turn = true
      return player1
    elsif player1.turn
      player1.turn = false
      player2.turn = true
      return player2
    else
      player1.turn = true
      player2.turn = false
      return player1
    end
  end

  def printScore
    if player1.life == 0
      puts "Player 2 wins with a score of #{player2.life}/3"
    elsif player2.life == 0
      puts "Player 1 wins with a score of #{player1.life}/3"
    else
      puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
      puts "---- NEW TURN ----"
    end
  end

  

end