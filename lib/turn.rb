#Shows the tic tac to board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converting user input to index
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#Checking to see if the move the user inputted is already taken
def valid_move?(board, index)
  def position_taken?(array, index)
    if array[index] == " " || array[index] == "" || array[index] == nil
      return false
    else
      return true
    end
  end

  #Checking to see if the move the user inputted is between 0-8

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  #Checking both areas where the move the user inputted could be invalid

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

#Placing the move the user inputs on the board
def move(board, index, character = "X")
  board[index] = character
  return board
end

#Asking a user for the number and checking to see if the move is valid, and if not, asking again
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
