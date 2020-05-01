

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end





def input_to_index(number)

 number.to_i-1

end 


def valid_move?(board, index)
   board[index]==" " && index.between?(0,8)
  

end 


def move(board,input_to_index,move="X")
 
  board[input_to_index] = move
  board
 end 
 
 
 def turn(board)
    puts "Please enter 1-9:"
       user_input = gets.chomp
        index_converted = input_to_index(user_input)
      
      if valid_move?(board, index_converted)
         move(board,index_converted)
        display_board(board)
        
      else 
        turn(board)
      end 
end
