def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#change input to Integer
def input_to_index(user_input)
  user_input.to_i-1
end

#record current player input
def move(board, index, current_player="X")
  board[index] = current_player
end
  
#check validation
def valid_move?(board, index)
  if index.between?(0,8) && !place_taken?(board, index)
  true
  elsif
  false
  
 end
end

#check for empty space
def place_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#make turn on board
def turn(board)
  puts "Please enter 1–9:"
  input = gets.strip
  index = input_to_index(input)
 if valid_move?(board, index)
   move(board, index)
   display_board(board)
 else
   turn(board)
  end
  
 end
 
 


 
