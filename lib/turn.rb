def turn(board) #takes a turn
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  
  user_input = gets.strip
  index = input_to_index(user_input)
  
  until valid_move?(board, index)
    display_board(board)
    puts "That is an invalid move."
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
  end
  
  move(board, index, value = "X")
  display_board(board)
end

def display_board(board) #displays the tictactoe board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index) #figures out if the move is valid or not by checking occupation and location
  if index.between?(0, 8) && (position_taken?(board, index) == FALSE)
    TRUE
  else 
    FALSE
  end
end


def position_taken?(board, index) #checks if the position already has a mark in it
  if board[index] == " " || board[index] == "" || board[index] == nil
    FALSE
  elsif board[index] == "X" || "O"
    TRUE
  end
end


def input_to_index(user_input) #converts user string input to integer and array index
  index = user_input.to_i - 1
end


def move(board, index, value = "X") #plaves the move on the board
  board[index] = value
end