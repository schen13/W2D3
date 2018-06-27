class Towers
  
  STARTING_TOWER = [[3, 2, 1], [], []]
  
  attr_reader :board
  
  def initialize(board = STARTING_TOWER)
    @board = board
  end
  
  def move(start_tow, end_tow)
    raise ArgumentError if board[start_tow].empty?
    raise ArgumentError unless board[end_tow].empty? || (board[start_tow].last <= board[end_tow].last) 
    current_disc = board[start_tow].pop
    board[end_tow].push(current_disc)
    board
  end
  
  def won?
    board[1] == [3, 2, 1] || board[2] == [3, 2, 1]
  end
  
  def play
    puts "Welcome to Towers of Hanoi!"
    until won?
      render
      puts "Please enter the tower you would like to take a disc from (0, 1, or 2): "
      start_tow = gets.chomp.to_i
      puts "Please enter the tower you would like to move that disc to (0, 1, or 2): "
      end_tow = gets.chomp.to_i
      move(start_tow, end_tow)
      system("clear")
    end
    puts "Winner winner, chicken dinner"
    board
  end
  
  def render
    print board
    puts ""
  end
end