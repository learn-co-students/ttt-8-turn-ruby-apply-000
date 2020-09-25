#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken?
def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#valid_move?
def valid_move?(board,index)
  if index == nil
    false
  elsif index.between?(0,8) == false
    false
  elsif position_taken?(board,index)
    false
  else
    true
  end
end

#move
def move(board,index,character = "X")
  board[index] = character
end

#input_to_index
def input_to_index(input)
  index = "#{input}".to_i - 1
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == false
    turn(board)
  else
    move(board,index,character = "X")
    display_board(board)
  end
end
