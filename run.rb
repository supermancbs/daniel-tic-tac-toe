require 'pry'
require_relative 'environment.rb'

class Runner

  def run
    intro = Intro.new
    player_and_computer = intro.run
    board = MakeBoard.new(9).run
    print_board = PrintBoard.new(board).run
  end 
 

end 

Runner.new.run




# game = Game.new
# player = Player.new
# rules = Rules.new
# computer = Computer.new(player)
# board = Board.new

# loop do
# 	game.play(player, computer, board)
# 	break if game.ask(player) == false
# 	rules = Rules.new
# 	board = Board.new
# 	game = Game.new
# end