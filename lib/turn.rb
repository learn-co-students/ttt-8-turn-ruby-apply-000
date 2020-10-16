def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
if (index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 7 || index == 8 ) && !position_taken?(board,index)
  return true
end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board,index,token="X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)


  if valid_move?(board,index)
    move(board,index,token="X")
    display_board(board)

elsif !valid_move?(board,index)
    turn(board)
  end
    end
