

def display_board(board)
  puts " #{board[0]} ""| #{board[1]} |"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""| #{board[4]} |"" #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} ""| #{board[7]} |"" #{board[8]} "
end

def turn(board)
  
loop do 
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
  
      if valid_move?(board, index)
        move(board, index)
      display_board(board)
        break
      end
    end
  

end


def input_to_index(index)
  return "#{index}".to_i - 1 
end


 
def move(board, index, value = "X")
   board[index] = value
end

def position_taken?(board, index)
  return board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
   if !index.between?(0, 8)
   return false
  end
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    return true
  end
  
  return !position_taken?(board, index)
end

