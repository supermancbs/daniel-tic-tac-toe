class Game

	def play(player, computer, board)
		take_turns(player, computer, board)
		if you_won(player, board)
			puts "good job lmao"
			player.stats[:wins] += 1
		elsif you_lost(player, board)
			puts "good try loser"
			player.stats[:losses] += 1
		else
			puts "ITS OVER AND NOBODY WON"
			player.stats[:draws] += 1
		end
	end

	def ask(player)
		puts player.stats
		puts "wanna play again? yes or no"
		input_answer
	end

	def take_turns(player, computer, board)
		loop do
			break if Rules.won?(board) == true || Rules.filled?(board) == true 
			player.turn(board)
			break if Rules.won?(board) == true || Rules.filled?(board) == true 
			computer.turn(board)
		end
	end

	def you_won(player, board)
		Rules.won?(board) == true && Rules.winner == player.symbol
	end

	def you_lost(player, board)
		Rules.won?(board) == true && Rules.winner != player.symbol
	end

	def input_answer
		answer = gets.chomp
		loop do
			break if answer == "yes" || answer == "no"
			puts "wrong answer"
			answer = gets.chomp
		end
		answer == "yes" ? true : false
	end


end