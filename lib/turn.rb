def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " "
    return FALSE
  elsif board[index] == ""
    return FALSE
  elsif board[index] == nil
    return FALSE
  else
    return TRUE
  end
end

def input_to_index(x)
  x_as_int = x.to_i - 1
  return x_as_int
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return TRUE
  end
end

def move(board, x_as_int, character = "X")
  board[x_as_int] = character
  return character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
  else
    turn (board)
  end
  display_board(board)
end
 