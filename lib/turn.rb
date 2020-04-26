board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  p_move = input_to_index(index)
  if valid_move?(board, p_move)
    move(board, p_move)
  else
    turn(board)
  end
  display_board(board)
end

def input_to_index(move)
  index = move.to_i - 1
  return index 
end 

def position_taken?(board, move)
  if board[move] == " " || board[move] == "" || board[move] == nil 
    return false 
  else 
    return true 
  end
end

def valid_move?(board, move)
  if move > board.length || move < 0
    return nil
  elsif position_taken?(board, move)
    return false 
  else 
    return true 
  end
end
    
def move(board, index, player_char = "X")
  board[index] = player_char 
end 