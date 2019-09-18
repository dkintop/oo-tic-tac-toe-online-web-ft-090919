class TicTacToe
  attr_accessor :board
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
  
  def initialize 
    @board = Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input_string)
    input_integer = input_string.to_i - 1
  end 
  
  def move (move_index, token)
    @board[move_index] = token
  end 
  
  
  def position_taken?(move_index)
    if @board[move_index] == " "
      false 
    else 
      true 
    end
  end
  
  def valid_move?(move_position)
    if !position_taken?(move_position) && move_position.between?(1, 9) 
      true 
    else 
      false 
    end 
    
    
  end 
  
end








