class Computer

	attr_accessor :symbol, :move

	def initialize(player)
		@symbol = ["X", "O"].reject{|decision| decision == player.symbol}[0]
	end

	def turn(board)
		@move = 0
		until Rules.valid?(self, board)
			@move = rand(1..9)
		end
		board.comp[@move - 1] = @symbol
		puts "computer's turn"
		board.display
	end

end