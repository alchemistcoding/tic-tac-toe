require_relative "./lib/game"
require_relative "./lib/player"

game = Game.new
player = Player.new

winner = false
exit_game = false
game.show_board 

until winner
  exit_game = player.input
  break if exit_game
  coordinate = player.current_player[:move] - 1
  game.move(coordinate)
  winner = player.current_player if game.check_winner
  player.swap_player
end

if exit_game
  puts "exit the game"  
else puts "we have a winner #{winner[:name]}"
end