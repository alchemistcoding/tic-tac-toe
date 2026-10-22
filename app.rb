require_relative "./lib/game"
require_relative "./lib/player_input"

game = Game.new
player = Player.new

winner = false
until winner 
  player.input
  coordinate = player.current_player[:move]
  game.move(coordinate)
  winner = player.current_player if game.check_winner
  player.swap_player
end

puts "we have a winner #{winner[:name]}"