class Player

  attr_reader :current_player

  def initialize
    @player1 = {name: "player 1", move: nil}
    @player2= {name: "player 2", move: nil}
    @current_player = @player1
  end

  def input
    print "#{current_player[:name]} center your Move [0-8] : " 
    @current_player[:move] = gets.chomp.to_i
  end

  def swap_player
    @current_player = @current_player == @player1? @player2 : @player1
  end

end
