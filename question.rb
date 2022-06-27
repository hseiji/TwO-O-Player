class Question
  attr_reader :num1, :num2, :answer, :question, :player
  def initialize(player)
    @player = player
    @num1 = Random.rand(1...20)
    @num2 = Random.rand(1...20)
    @answer = @num1 + @num2
    @question = "#{player.name} : What does #{@num1} plus #{@num2} equal?"
    
  end

  def question()
    puts @question
  end

  

end 