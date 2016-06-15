require "pry"

require_relative "models/board.rb"
require_relative "models/computer.rb"
require_relative "models/player.rb"
require_relative "models/space.rb"

require_relative "service/cpu_move.rb"
require_relative "service/game_over.rb"
require_relative "service/intro.rb"
require_relative "service/make_board.rb"
require_relative "service/player_move.rb"
require_relative "service/print_board.rb"

#Pry.start