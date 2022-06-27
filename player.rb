class Player
  attr_accessor :name, :life, :turn

  def initialize(name)
    @name = name
    @life = 3
    @turn = false
  end

  def updateLife(num)
    @life = @life + num
  end

end