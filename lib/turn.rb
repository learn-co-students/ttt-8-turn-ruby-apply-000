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
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
end
end

def input_to_index(user_input)
  user_input.to_i - 1
end
  
 def move(array, index, value = "X")
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def update_array_at_with(array, index, value)
  array[index] = value
end
update_array_at_with(array, index, value)

return board
end

def valid_move? (board, index)
  position = position_taken?(board, index) 
  
  if position == false && index.between?(0, 8)
    true
    
  else
    false
  end
end

def position_taken?(array, index_number)
  
if array[index_number] == " "
  return false
end
  
if array[index_number] == ""
  return false
end

if array[index_number] == nil
  return false
end
  if array[index_number] == "X" || "O"
    return true
end
end