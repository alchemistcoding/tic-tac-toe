class Player

  attr_reader :current_player

  def initialize
    @player1 = {name: "player 1", move: nil}
    @player2= {name: "player 2", move: nil}
    @current_player = @player1
    @move_made = []
  end

  def input
    valid_move = false
    until valid_move
      print "#{current_player[:name]} center your Move [1-9] : "
      player_input = gets.chomp.to_i
      if(player_input >= 1 && player_input <= 9 && !@move_made.include?(player_input))
        valid_move = true
        @current_player[:move] = player_input
        @move_made.push(player_input)
        
      else puts "enter a valid move"
      end
    end  
  end

  def swap_player
    @current_player = @current_player == @player1? @player2 : @player1
  end

end
