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
  
  def valid_move?(move_index)
    if !position_taken?(move_index) && move_index.between?(0, 8) 
      true 
    else 
      false 
    end 
  end
  
  def turn_count 
    count = 0 
    @board.each do |position|
      if position == "X" || position == "O"
        count += 1
      end
    end 
    count 
  end
  
  def current_player
    if turn_count.even?
      "X"
    else 
      "O"
    end 
  end 
  
  def turn 
    puts "Please select a position between 1-9"
    input = gets.chomp
    move_index = input_to_index(input)
    player = current_player
    if valid_move?(move_index) == true
      move(move_index, player)
      display_board
    else 
      puts "invalid move choice, please select a valid position"
      turn
    end
  end
  
 
  
  
  
end








