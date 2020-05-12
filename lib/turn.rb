
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input.to_i - 1
  validates_move(board, index)
end

def validates_move(board,index)
  if index.between?(1,9)
    move(board,index)
  else
    turn(board)
  end
end

def move(board, index, character = "X")
  board[index] = character
  display_board(board)
end