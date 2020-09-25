def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if board[index] == " " && index > -1 
    true
  else
    false
  end 
end

def move(board,index,char="X")
  board[index] = char
end

def input_to_index(index)
  index=index.to_i - 1 
end 

def turn(board)
  puts "Please enter 1-9:"
  num=gets.strip
  num=input_to_index(num)
  if valid_move?(board,num)
    move(board,num)
    display_board(board)
  else
  turn(board)
  end
end