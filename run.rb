require 'pry'
require_relative 'environment.rb'

class Runner


  def human_game_over(board, player)
    if GameOver.new(board, player).run=="win" 
      puts "You win!"
      UpdateStats.new(player).win  
    else 
      UpdateStats.new(player).tie
       puts "Tie!"
    end 
  end

  def computer_game_over(computer, player, board)
    if  GameOver.new(board, player).run=="lose"
      UpdateStats.new(player).lost
      puts "You Lose!"
    else 
      UpdateStats.new(player).tie
       puts "Tie!"
    end 
  end

  def take_turns(player, computer, board)
    loop do
      PlayerMove.new(player, board).run
      if GameOver.new(board, player).run!=false  
        human_game_over(board, player)
        break
      end
      ComputerMove.new(computer, board).run
      PrintBoard.new(board).run
      if GameOver.new(board, player).run!=false 
       computer_game_over(computer, player, board)
        break
      end 
    end
  end

  def run
    intro = Intro.new
    player_and_computer = intro.run
    board = MakeBoard.new(9).run
    player = player_and_computer[:player]
    computer = player_and_computer[:computer]
    take_turns(player, computer, board)
    puts player.stats 
    PrintBoard.new(board).run
  end 
end 

Runner.new.run


# def run
#     intro = Intro.new
#     player_and_computer = intro.run
#     board = MakeBoard.new(9).run
#     player = player_and_computer[:player]
#     computer = player_and_computer[:computer]
#     loop do
#       PlayerMove.new(player, board).run

#       if GameOver.new(board, player).run!=false  
#         if  GameOver.new(board, player).run=="win" 
#           puts "You win!"
#           UpdateStats.new(player).win
          
#         else 
#           UpdateStats.new(player).tie
#           puts "Tie!"
#         end 
#         break
#       end 

#       ComputerMove.new(computer, board).run
#       PrintBoard.new(board).run
#       if GameOver.new(board, player).run!=false 
#         if  GameOver.new(board, player).run=="lose"
#           UpdateStats.new(player).lost
#           puts "You Lose!"
#         else 
#           UpdateStats.new(player).tie
#           puts "Tie!"
#         end 
#         break
#       end 
#     end
#      puts player.stats 
#       PrintBoard.new(board).run
#   end 





