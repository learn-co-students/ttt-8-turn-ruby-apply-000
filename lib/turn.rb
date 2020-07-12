def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  index = input_to_index(answer)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


x = "X"
o = "O"
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
 puts  " #{board[0]} | #{board[1]} | #{board[2]} \n"
 puts  "-----------\n"
 puts  " #{board[3]} | #{board[4]} | #{board[5]} \n"
 puts  "-----------\n"
 puts  " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(player_input)
  new_input = player_input.to_i
  new_input -= 1 
  return new_input
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
      return false 
    else
      return true 
    end
  end
  
  def on_board?(index)
    if index.between?(0, 8) == true
      return true 
    else
      return false
    end
  end
  
  if position_taken?(board, index) == false && on_board?(index) == true
    return true
  else
    return false 
  end 
end

