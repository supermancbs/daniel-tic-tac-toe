class Player

	attr_accessor :symbol, :move, :name, :wins, :losses, :draws, :stats

	def initialize
		@stats = {wins: 0, losses: 0, draws: 0}
		puts "whats ur name lol"
		@name = gets.chomp
		puts "that's a good name, what's your symbol? X or O"
		@symbol = gets.chomp.upcase
		loop do
			break if @symbol == "X" || @symbol == "O"
			puts "wrong answer"
			@symbol = gets.chomp
		end
		puts "Your symbol is #{@symbol}!"
	end

	def turn(board)
		puts "Choose a number from 1-9."
		@move = gets.chomp.to_i
		loop do 
			break if Rules.valid?(self, board)
			puts "wrong answer."
			@move = gets.chomp.to_i
		end
		board.comp[@move - 1] = @symbol
		puts "player turn"
		board.display
	end
end