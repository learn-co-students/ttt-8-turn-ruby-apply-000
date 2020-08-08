def turn(board)
  puts"Please enter 1-9:"
  num = gets.strip
  idx = input_to_index(num)
  
  if valid_move?(board,idx) == true
    move(board,idx,"X")
  else
    turn(board)
  end
  display_board(board)
end

def display_board(moves)
  puts " #{moves[0]} | #{moves[1]} | #{moves[2]} "
  puts "-----------"
  puts " #{moves[3]} | #{moves[4]} | #{moves[5]} "
  puts "-----------"
  puts " #{moves[6]} | #{moves[7]} | #{moves[8]} "
end

def valid_move?(board, index)
  if (index < 9 && index >= 0) && position_taken?(board, index) == false
    return true
  else
    return false 
  end
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    true
  else
    false 
  end
end

def input_to_index(num)
  number = num.to_i
  index = number - 1
  return index
end


def move(board, index, value = "X")
  board[index] = value
  return board
end