def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false 
  else 
    true 
  end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index) == false 
      true
    else 
      false
    end
  else 
    false
  end
end

def input_to_index(user_input)
  index = user_input.to_i
  index = index - 1
end  

def move(array, index, value = "X")
  array[index] = value
  display_board(array)
end


def turn(board)
  loop do 
     puts "Please enter 1-9:"
     index = input_to_index(gets.strip)
    if valid_move?(board, index) 
      move(board, index)
       break
    end
  end
end




