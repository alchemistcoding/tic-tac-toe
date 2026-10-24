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
    col1 = []
    col2 = []
    col3 = []
    @board.each_with_index do
      |cell, index|
      if index < 3
        col1.push(cell)
      elsif index >= 3 && index < 6
        col2.push(cell)
      else col3.push(cell)  
      end
    end
    p col1 
    p col2 
    p col3
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