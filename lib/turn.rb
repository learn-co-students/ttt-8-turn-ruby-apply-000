def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1
  return new_user_input
end

def move(board, index, player = "X")
  board[index] = player
  return board
end

def valid_move?(board, index)
  
  def position_taken? (board_array, input)
  if board_array[input] == " "
    return false
  elsif board_array[input] == ""
    return false
  elsif board_array[input] == nil
    return false
  else
    return true
  
  end
end
  
  def valid_num(num)
    if num.between?(0, 8) == true
      return true
    else 
      return false
    end
  end

  if (position_taken?(board, index)) == false && (valid_num(index)== true)
    return true
  else
    return false
  end  
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
else 
  turn(board)
end
end