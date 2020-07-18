def display_board(board = [])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, move)
  if position_taken?(board,move)
    return false
    
  elsif move >= 0 && move <= 8
    return true
    
  elsif !(move >= 0 && move <= 8)
    return false
 
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end
  

def input_to_index(user_input)
  user_input = user_input.to_i
  converted_input = user_input - 1
  return converted_input
end

 def move(array, converted_input, character = "X" )
   array[converted_input] = character
 end
 
 
 
 def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   
   converted_input = input_to_index(user_input)
   
   if valid_move?(board,converted_input)
     move(board, converted_input)
     display_board(board)
   else
     turn(board)
   end
   
 end

   
 