board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
! (board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  if index.between?(0,8) && ! position_taken?(board,index)
    return true
  end
end

def move(board, index, first_player = "X")
  board[index] = first_player
end

def turn_count(array)
  counter = 0
  array.each do |element|
    if (element == "X" || element == "O")
      counter += 1
    else
      # do nothing
    end
  end
  return counter
end

def current_player(board)
  if (turn_count(board).even? == true)
    return "X"
  else
    return "O"
  end
end

def turn(board)
puts "Please enter 1-9:"
if turn_count(board).even? == true
end

  input = gets.strip
  index = input_to_index(input)
if valid_move?(board, index)
    move(board, index, current_player(board))
  display_board(board)
  else
turn(board)
end
end
