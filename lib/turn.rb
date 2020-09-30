# given the board array it displays the board in ASCII
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# given the board and index it should return true if the index is within range and is currently unoccupied 
def valid_move?(board, index)
  if (index >= 0 && index <= 8) && (board[index] == "" || board[index] == " " || board[index] == nil)
    return true
  else 
    return false
  end
end

# given a board, index and token, sets the index of the board to equal the token
def move(board, index, character = "X")
  board[index] = character
end

# given the user input it converts it to an integer
def input_to_index(index)
  return index.to_i - 1
end

# prints a prompt to specify it is the users turn, gets users turn from input
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else 
    turn(board)
  end
  display_board(board)
end

