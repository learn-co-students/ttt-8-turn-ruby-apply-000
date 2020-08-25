#Asks player for number, checks if it is valid and if not asks repeatedly.

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index)  == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

#Shows tic tac toe board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end





#Takes a user input for a char placemenet on tic tac toe board, converts it to an Integer (index integer)


def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end



# Validates a player move, checks if the move is available to be placed on a tic tac toe board(that is not already taken)
# It is an actual number??? 


def valid_move?(board, ix)
  if position_taken?(board, ix) == false && move_val?(ix) == true
    return true
  else
    false
  end
end 




def position_taken?(board, ix)
  if board[ix] == " " || board[ix] == "" || board[ix] == nil
    return false
  else
    return true
  end
end

def move_val?(num)
  if num.between?(0, 8) == true
    return true
  else
    return false
  end
end

#Takes a users number and the board, and places the X or O char in the position player chose !! 

def move(board, input_to_index, x = "X")
  board[input_to_index] = x
  return board
end
