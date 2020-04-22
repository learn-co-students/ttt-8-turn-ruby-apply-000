
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end

def move(board, position_index, value = "X")
  board[position_index] = value
  display_board(board)
end

def valid_move?(board, index)
  !!((0..8).to_a.include?(index) && !position_taken?(board, index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board,index, value = "X")
  else
    puts "Invalid Move."
    turn(board)
  end

end
