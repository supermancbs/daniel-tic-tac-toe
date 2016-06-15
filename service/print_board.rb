class PrintBoard

  attr_accessor :board
  def initialize(board)

    @board = board 
    
  end 

  def print_board
    puts "#{@board[0].value} | #{@board[1].value} | #{@board[2].value}"
    puts "----------"
    puts "#{@board[3].value} | #{@board[4].value} | #{@board[5].value}"
    puts "----------"
    puts "#{@board[6].value} | #{@board[7].value} | #{@board[8].value}"
    puts "   "
  end

  def run
    print_board
  end

end 