class Player 
  attr_accessor :name, :symbol, :stats

  def initialize(name)
      @name = name 
      @stats = {wins: 0, losses: 0, ties: 0}
      @symbol = ""
  end 

end 