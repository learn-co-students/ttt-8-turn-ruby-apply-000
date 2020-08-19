def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end
 
 def input_to_index(user_input)
  
  converted_input = user_input.to_i - 1
end

whateveryouwanttoput_board = [" "," "," "," "," "," "," "," ",""]

def valid_move?(board, index)
if (board[index] == "" || board[index] == nil || board[index] == "X" || board[index] == "O" || index <= -1 || index >= 9)
 false
 else
   true
end
end

puts valid_move?(whateveryouwanttoput_board, 0)
puts valid_move?(whateveryouwanttoput_board, 1)
puts valid_move?(whateveryouwanttoput_board, 2)
puts valid_move?(whateveryouwanttoput_board, 3)
puts valid_move?(whateveryouwanttoput_board, 4)
puts valid_move?(whateveryouwanttoput_board, 5)
puts valid_move?(whateveryouwanttoput_board, 6)
puts valid_move?(whateveryouwanttoput_board, 7)
puts valid_move?(whateveryouwanttoput_board, 8)

def move(board, position, token="X")
  board[position] = token
end

def turn(board)
 puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
 if valid_move?(board, index)
move(board, index)
display_board(board)
else
  turn(board)
end
end