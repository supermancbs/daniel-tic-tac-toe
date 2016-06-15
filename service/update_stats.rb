class UpdateStats
  
  def initialize(player)
    @player = player 
  end 

  def win
    @player.stats[:wins]+=1
  end 

  def lost 
    @player.stats[:losses]+=1
  end 

  def tie 
    @player.stats[:ties]+=1
  end 

end 