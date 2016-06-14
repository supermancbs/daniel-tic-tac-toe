game = Game.new
player = Player.new
rules = Rules.new
computer = Computer.new(player)
board = Board.new

loop do
	game.play(player, computer, board)
	break if game.ask(player) == false
	rules = Rules.new
	board = Board.new
	game = Game.new
end