def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil && index >= 0 && index <=0 )
      return true
    else
      return false
    end
end


def valid_move?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    if (index.between?(0,9) == true)
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
    user_int = user_input.strip.to_i
    user_int = user_int - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  user_input = input_to_index(user_input)
  if (valid_move?(board, user_input) == true)
    move(board, user_input)
    puts display_board(board)
  else
    puts "Try again"
    turn(board)
  end
end