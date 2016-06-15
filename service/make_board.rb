class MakeBoard
  
  attr_accessor :board, :num
  
  def initialize(num)
    @board = Board.new
    @num = num  
  end 

  def build_board
    @num.times { @board.comp << Space.new }
  end 

  def run
    build_board
    @board.comp
  end 

end 