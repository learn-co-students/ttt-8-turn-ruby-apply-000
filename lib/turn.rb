
# display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(index)
  index.to_i - 1
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end


#valid_move?
def valid_move?(board, index)
  if index.between?(0, 8) == false || position_taken?(board, index) == true
    false
  elsif index.between?(0, 8) == true || position_taken?(board, index) == false
    true
  end
end

# Move
def move(board,input_to_index,value = "X")
  board[input_to_index] = value
end

#turn
def turn(board)
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
