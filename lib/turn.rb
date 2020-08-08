#display_board displays the tic-tac-toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index converts the user input to board array index
def input_to_index(input)
  input.to_i - 1
end

#valid_move? checks if the user input is a valid position on the board and if empty
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

#position_taken? checks if user input position is empty
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""  || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

#turn asks user to take a turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end

#move accepts user input as move for their turn
def move(board, index, char = "X")
  board[index] = char
end