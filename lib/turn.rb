#displays tic tac toe board with board spaces as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts a user's place on the board to the index integer
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#checks the number to see if 1)the position is already taken and 2)it is an actual number
def valid_move?(board, index)
  if (index.between?(0, 8)) && (position_taken?(board, index) == false)
    return true
  else
    return false
  end
end

#checks to see if the position on the board is taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, token = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
  end
end
