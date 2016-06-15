class Rules

	@@winner = "no one"
	@@winning_combinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

	attr_accessor :winning_sequence

	def self.winner=(winner)
		@@winner = winner
	end

	def self.winner
		@@winner
	end

	def self.won?(board)
		decide_winning_sequence(board)
		no_winning_sequence ? false : decide_winner(board)
	end

	def self.valid?(player, board)
		true if space_is_blank(player, board) && move_within_bounds(player)
	end

	def self.filled?(board)
		true if no_spaces_left(board)
	end

	private

	def self.decide_winning_sequence(board)
		@winning_sequence = @@winning_combinations.select do |array|
			board.comp[array[0]] == board.comp[array[1]] && board.comp[array[0]] == board.comp[array[2]] && board.comp[array[2]]!= " "
		end
	end

	def self.decide_winner(board)
		@@winner = board.comp[@winning_sequence[0][0]]
		true
	end

	def self.no_winning_sequence
		@winning_sequence.size == 0
	end

	def self.space_is_blank(player, board)
		board.comp[player.move - 1] == " "
	end

	def self.move_within_bounds(player)
		player.move >= 1 && player.move <= 9
	end

	def self.no_spaces_left(board)
		!board.comp.include?(" ")
	end

end
