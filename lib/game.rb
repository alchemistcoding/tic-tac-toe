class Game

  @@winning_pattern = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6],
  ]

  @@current_move = "O"

  def initialize
    @board = (1..9).to_a
  end

  def show_board
    board = ""
    @board.each_with_index do
      |cell, index|
      board = board + "| #{cell}"  
      if index == 2 || index == 5 || index == 8
        board = board + " |\n ----------\n"
      end
    end
    puts board
  end

  def check_winner
    show_board
    @@winning_pattern.each do 
      |pattern|
      if(@board[pattern[0]] != nil && @board[pattern[0]] == @board[pattern[1]] && @board[pattern[2]] == @board[pattern[1]])
        return true
      end
    end
    return false
  end

  def move(coordinate)
    @board[coordinate] = @@current_move
    swap_move
  end

  def swap_move
    @@current_move = @@current_move == "O" ? "X" : "O"
  end

end