class GameOver
attr_accessor :board, :player_symbol

@@winning_combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

  def initialize(board, player)
    @board = board
    @player_symbol = player.symbol
  end

  def won_lost? ###first check to see if winning combo slots are filled
    ##then check to see if tokens all the same
    @@winning_combinations.each do |combo|
      if @board[combo[0]].value != " " && @board[combo[0]].value ==  @board[combo[1]].value &&  @board[combo[1]].value == @board[combo[2]].value
        if @player_symbol==@board[combo[0]].value
          return "win"
        else 
          return "lose"
        end 
      end
    end
    false
  end



  def full_board?
    true if @board.find {|space| space.value == " "} == nil  ##if full return true if not return false
    false  
  end

  def run 
    if won_lost?!=false 
      return won_lost?
    elsif full_board?
      "tie" 
    else
      false
    end
  end

end 