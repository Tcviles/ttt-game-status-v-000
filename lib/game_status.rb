# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect {|combo| ((board[combo[0]] == board[combo[1]]) and (board[combo[1]] == board[combo[2]]) and (position_taken?(board,combo[0]))) ? combo : nil }
end

def full?(board)
  (board.include?(" ") or board.include?(nil)) ? false : true
end

def draw?(board)
  (!won?(board) and full?(board)) ? true : false
end

def over?(board)
 (won?(board) or draw?(board)) ? true : false
end

def winner(board)
  won?(board) ? board[won?(board)[1]] : nil
end
