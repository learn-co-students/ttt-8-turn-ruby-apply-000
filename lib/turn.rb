def valid_move?(board,index)
    if !position_taken?(board,index) && index >= 0 && index <= 8
       true
    else
        false
    end
end

def position_taken? (board,index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    elsif board[index] == "X" || board[index] == "O"
      true
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,position,char = "X")

    board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
   
  if valid_move?(board,index)
      move(board,index)
      display_board(board)
  else
      turn(board)
   end
end
