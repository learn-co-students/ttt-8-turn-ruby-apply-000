
board = [9]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input) 
  index = user_input.to_i - 1 
end

def move(board, index, player = "X")  
board[index]= player
end

def valid_move?(board, index)
  def position_taken?(board, index)

  if (board[index] == " "|| board[index] == "" || board[index] == nil)
   false
  elsif 
   true
  end
end

def on_board?(num)
  if num.between?(0, 8) == true
   true
  elsif
   false
  end
end
    
  if ((position_taken?(board, index)) == false && (on_board?(index) == true))
    true
  elsif
    false
  end
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    
    input=gets.strip
    
    index=input_to_index(input);
    
    if(valid_move?(board,index))
      
      move(board,index)
      
      display_board(board)
      
      break
    end
  end
  
end
  



