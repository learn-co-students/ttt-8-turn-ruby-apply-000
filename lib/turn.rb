def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if(!valid_move?(board,input))
    while(!valid_move?(board,input))
      puts "Please enter 1-9:"
      input = gets.strip
      input = input_to_index(input)
    end
  end
  move(board,input)
  display_board(board)
end

def valid_move?(board, index)
    if (position_taken?(board,index) || !index.between?(0,8))
        return false
    else
        return true
    end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num.to_i - 1
end

def move(board,index,player = "X")
  board[index] = player
  return board
end