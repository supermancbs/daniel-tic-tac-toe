class Game

	def play(player, computer, board)
		loop do
			break if Rules.won?(board) == true || Rules.filled?(board) == true 
			player.turn(board)
			break if Rules.won?(board) == true || Rules.filled?(board) == true 
			computer.turn(board)
		end
		if Rules.won?(board) == true && Rules.winner == player.symbol
			puts "good job lmao"
			player.stats[:wins] += 1
		elsif Rules.won?(board) == true && Rules.winner != player.symbol
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
		answer = gets.chomp
		loop do
			break if answer == "yes" || answer == "no"
			puts "wrong answer"
			answer = gets.chomp
		end
		answer == "yes" ? true : false
	end
end