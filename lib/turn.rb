def turn(board)
puts "Please enter 1-9:"
index = 0
input = gets.strip.to_i
input = input_to_index(input)
while valid_move?(board, input) == false
  puts "Invalid move, please enter another position"
  input = gets.strip.to_i
  input = input_to_index(input)
  valid_move?(board, input)
end
   move(board,input, value = "X")
   display_board(board)
end

def valid_move?(array, index_number)
if index_number > 8 || index_number < 0  || position_taken?(array,index_number)
  false
else
  true
end
end

def position_taken?(array, index_number)
if array[index_number] == "" || array[index_number] == " " || array[index_number] == nil
false
else
  true
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
  return input
end
def move(board,input, value = "X")
  board[input] = value
end
