class Rules

	@@winner = "no one"
	@@winning_combs = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

	def self.winner=(winner)
		@@winner = winner
	end

	def self.winner
		@@winner
	end

	def self.won?(board)
		x = @@winning_combs.select do |array|
			board.comp[array[0]] == board.comp[array[1]] && board.comp[array[0]] == board.comp[array[2]] && board.comp[array[2]]!= " "
		end
		if x.size == 0
			false
		else
			@@winner = board.comp[x[0][0]]
			true
		end
	end

	def self.valid?(player, board)
		true if board.comp[player.move - 1] == " " && player.move >= 1 && player.move <= 9
	end

	def self.filled?(board)
		true if !board.comp.include?(" ")
	end

end
