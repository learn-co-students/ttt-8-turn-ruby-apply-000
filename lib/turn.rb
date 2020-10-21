#turn method 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
    
    turn(board)
    
  end
end

# display board helper_method

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid move helper_method

def valid_move?(board, index)
 if position_taken?(board,index) == false && index.between?(0,8)
   true
 end
end

# position_taken? helper_method

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

#input_to_index helper_method

def input_to_index(choice)
  index = choice.to_i - 1
end

# move helper_method
def move(board, index, character = "X")
  board[index] = character
end
