def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = (input.to_i - 1)
  if valid_move? == true
    move(board, index, token)
    display_board(board)
  else
    until valid_move? == true do turn(board)
  end
end

def move(board, index, token="X")
  board[index] == token
end

def valid_move?(board, index)
  if index.between(0,8) && (position_taken? == false)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == "X") || (board[index] == "O")
    return true
  else
    return false
  end
end