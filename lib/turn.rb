def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,8) and board[index] != "X" and board[index] != "O"
    return true
  end
  return false
end

def move(board,index,token)
    board[index] = token
end

def input_to_index(input)
  index = input.strip.to_i - 1
  return index
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,token="X")
    display_board(board)
  else  
    turn(board)
  end
end
