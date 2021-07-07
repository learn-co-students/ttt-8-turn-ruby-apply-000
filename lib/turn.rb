board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  input = input.to_i - 1
end

def position_taken?(board, position)
  if board[position] == "" || board[position] == " " || board[position] == nil
  	false
  else
  	true
  end
end 

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else 
    return false
  end
end

def move(board, index, value = "X") 
  board[index] = value 
end 

def turn(board)
  puts "Please enter 1-9:"
  reply = gets.strip
  index = input_to_index(reply)
  if valid_move?(board, index) #== true
    move(board,index)
    display_board(board)
  else 
    puts "That was an invalid choice, please try again"
    turn(board)
  end
end 
    
    
  
  
  