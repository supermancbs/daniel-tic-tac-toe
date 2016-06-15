class Player

	attr_accessor :symbol, :move, :name, :wins, :losses, :draws, :stats

	def initialize
		@stats = {wins: 0, losses: 0, draws: 0}
		puts "whats ur name lol"
		@name = gets.chomp
		puts "that's a good name, what's your symbol? X or O"
		choose_symbol
		puts "Your symbol is #{@symbol}!"
	end

	def turn(board)
		puts "Choose a number from 1-9."
		choose_move(board)
		board.comp[@move - 1] = @symbol
		puts "player turn"
		board.display
	end

	def choose_move(board)
		@move = gets.chomp.to_i
		loop do 
			break if Rules.valid?(self, board)
			puts "wrong answer"
			@move = gets.chomp.to_i
		end
	end

	def choose_symbol
		@symbol = gets.chomp.upcase
		loop do
			break if @symbol == "X" || @symbol == "O"
			puts "wrong answer"
			@symbol = gets.chomp.upcase
		end
	end
end