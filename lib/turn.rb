def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  user_input.to_i - 1
  
end

def valid_move?(board, pos)
  if pos.between?(0,8)
    position_taken?(board, pos)
  end
end

def position_taken?(board,move)
  (board[move] == " " || board[move] == "" || board[move] == nil)
end

def move(board, pos, char = "X")
  if valid_move?(board,pos)
    board[pos]=char
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_choice = gets.strip
  pos = input_to_index(user_choice)
  if move(board, pos, "X")
     display_board(board)
  else
    turn(board)
  end
end