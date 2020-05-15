board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
 if position_taken?(board, index) == false && index.between?(0, 8)
   "truth"
   else position_taken?(board, index) != [board, index.between?(0, 8)]
     false
end
end

def position_taken?(board, index)
 board[index] != " " && board[index] != "" && board[index] != nil
end

def input_to_index(board)
  "#{board}".to_i-1
end
def move(display_board, input_to_index, value="X")
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  display_board[input_to_index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    puts display_board(board)
  else
    puts "Please choose again"
    turn(board)
  end
end

