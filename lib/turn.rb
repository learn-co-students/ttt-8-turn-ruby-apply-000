#display board method
def display_board(board_state)
  #row 1
  puts " #{board_state[0]} | #{board_state[1]} | #{board_state[2]} "
  puts "-----------"
  #row 2
  puts " #{board_state[3]} | #{board_state[4]} | #{board_state[5]} "
  puts "-----------"
  #row 3
  puts " #{board_state[6]} | #{board_state[7]} | #{board_state[8]} "
end

#valid move method
def valid_move?(board, index)
  #if the move is within the board
  if index.between?(0,8) == true
    #and if the spot is not taken 
    if position_taken?(board, index) == false
      #valid move
      true
    end
  else
    #else not valid move
    false
  end
end

#position taken method to be used within valid move
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

#convert input of 1-9 to index 0-8
def input_to_index(position)
  position.to_i - 1
end

#get board state, input, and character
def move(board, position, xo = "X")
  board[position] = xo
end

#turn input method
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  #if the move is good, edit and print the board
  if valid_move?(board, index)
    move(board, index, xo = "X")
    display_board(board)
  #if the move is bad, let the player know and loop the turn method
  else
    puts "Invalid move, please enter a different number:"
    turn(board)
  end
end