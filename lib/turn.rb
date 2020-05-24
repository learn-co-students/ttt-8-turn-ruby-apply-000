def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, position ="X")
    puts display_board(board)
  else
    turn(board)
  end
end

#   #ask for input DONE
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, position = "X")
  board[index] = position
end
  
  
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  


def valid_move?(board, index)
  if (index.between?(0, 8) == true && position_taken?(board, index) == false)
       true
     else
       false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end
  
  
  
