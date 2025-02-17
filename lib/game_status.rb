# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  winning_combination = WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] != " " && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
  end
end

def full?(board)
  board.all? do |index|
  index != " "
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if full?(board) || draw?(board) || won?(board)
    true
  end
end

def winner(board)
  winning_combination = won?(board)
  if winning_combination
    board[winning_combination[0]]
  else
    nil
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

