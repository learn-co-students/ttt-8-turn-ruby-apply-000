def display_board(board)
  pipe = "|"
  line = "-----------"
  puts " #{board[0]} #{pipe} #{board[1]} #{pipe} #{board[2]} "
  puts "#{line}"
  puts " #{board[3]} #{pipe} #{board[4]} #{pipe} #{board[5]} "
  puts "#{line}"
  puts " #{board[6]} #{pipe} #{board[7]} #{pipe} #{board[8]} "
end


def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end


def valid_move?(board, index)
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == " " 
      return false
    elsif board[index] == "" 
      return false
    elsif board[index] == nil
      return false
    else
      return true
    end
  end
  def spot_taken?(num)
    if num.between?(0, 8) == true
      return true
    else 
      return false
    end
  end
  if (position_taken?(board, index)) == false && (spot_taken?(index)) == true
    return true
  else 
    return false
  end
end


def move(board, index, character="X")
  board[index] = character
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
end 