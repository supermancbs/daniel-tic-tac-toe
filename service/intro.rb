class Intro
  attr_reader :player, :computer
  #get player, and computer, and greet. End result: ready to start playing.
  def initialize
    puts "Here are the rules: ...."
    puts "What is your name?"
    @player = Player.new(gets.chomp)
    until @player.symbol
    puts "Do you want X or O?"

  end

  def run 
    {player: @player, computer: @computer}
  end 

end 

# class Runner

#   def run
#     intro = Intro.new
#     player = intro.run
#   end
# end





 # def run
  #   [player, computer]
  # end