class ComputerMove
  attr_accessor :computer, :board, :move

  def initialize(computer, board)
    @computer = computer
    @board = board
  end

  def gets_move 
    @move = rand(0..8)
  end 

  def valid_move? 
    @board[@move].value == " " ? true : false
  end 

  def put_on_board
    @board[@move].value = @computer.symbol
  end 

  def run 
    gets_move
    until valid_move? 
      gets_move
    end 
      put_on_board
  end 

end 