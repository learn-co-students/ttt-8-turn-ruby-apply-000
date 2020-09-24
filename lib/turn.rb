board = ["X","O","X","X","X","O","X","O","O"]

def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" " #{board[8]} "
end



def input_to_index(user_input)
   user_input.to_i - 1
end



board = [" ", " ", " "]

def move(board, index, player = "X")
   board[index] = player
end




def valid_move?(board, index)
  
  def position_taken?(array, index)
    if array[index] == " " || array[index] == "" || array[index] == nil
      return false
    else
      return true
    end
  end
   
  def on_the_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end
  
  if (position_taken?(board, index)) == false && (on_the_board?(index) == true)
    return true
  else
    return false
  end
  
end

def turn (board)
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

def play(board)
  i =0
  while i < 9
    turn(board)
    i += 1
  end   
end


