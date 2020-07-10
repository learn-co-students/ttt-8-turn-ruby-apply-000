
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index_num = input_to_index(input)
  if valid_move?(board, index_num)
      move(board, index_num, 'X')
  else
      puts "Please enter 1-9:"
      input = gets.strip
  end
  
end

def input_to_index(str)
  if str.to_i>=1 && str.to_i<=9
    return str.to_i - 1
  else
    return -1
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index>8 || index < 0
    return FALSE
  elsif position_taken?(board, index)
    return FALSE
  else
    return TRUE
  end
end

def position_taken?(board, index)
  if (board[index]=="" || board[index]==" " || board[index]==nil)
    return FALSE
  else
    return TRUE
  end
end

def move(array, index, value="X")
  array[index]= value
  display_board(array)
end