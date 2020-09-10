=begin get input
convert input to index
if index is valid
  make the move for input
else
  ask for input again until you get a valid input
end
=end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

 if valid_move?(board, index) 
    move(board, index)
    display_board(board)
   else
    turn(board)  
      end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, idx)
  if position_taken?(board, idx)
    return false
  elsif idx.between?(0, 8)
    return true
  else
    return false
    end
end


def position_taken?(board, idx)
  if board[idx] == " " || board[idx] == ""
    return false
    elsif board[idx] == "X" || board[idx] == "O"
    return true
    else 
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

 def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
  end

=begin if valid_move?(board, idx) 
    return true
   else
    puts "Please enter 1-9:"  
  end
=end



def move(board, index, character = "X")
board[index] = character
end 