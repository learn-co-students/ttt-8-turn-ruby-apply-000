

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input - 1
end

def move(board, index, player="X")
   board[index] = player
end 



def valid_move?(board, index)
  if position_taken?(board, index) == false && !index.between?(0, 8) == false
    return true 
else return false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else return true 
  end
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.chomp
  user_move = input_to_index(move)
  if valid_move?(board, user_move)
    move(board, user_move)
    display_board(board)
  else 
    puts "Please enter 1-9:"
    move = gets.chomp
end
end 