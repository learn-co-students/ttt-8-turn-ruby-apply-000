def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num.to_i - 1 
end

def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "nil"
    false
  elsif board[index] == "X" || "O"
    true
  end
end

def valid_move?(board,index)
  if (index >= 0 && index <= 8) && position_taken?(board,index) == false
    true
  else
    false
  end
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  
  until valid_move?(board,index) == true
    puts "Please enter 1-9:"
    num = gets.strip
    index = input_to_index(num)
    break
  end
  
  move(board, index, char = "X")
  display_board(board)
end