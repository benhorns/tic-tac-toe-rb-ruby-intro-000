def position_taken?(board, index)
if board[0]==" " || board[0]=="" || board[0]==nil
  false
else board[0]=="X" || board[0]=="O"
  true
end
end

def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def turn_count(board)
  turns = 0
  board.each do |counter|
    if counter == "X" || counter == "O"
      turns += 1
    end
  end
  return turns
end

def current_player(board)
  turn_count(board)%2 == 0 ? (return "X") : (return "O")
end
