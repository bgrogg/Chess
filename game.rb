require_relative 'board.rb'
require_relative 'display.rb'

class Game

  attr_accessor :board

  def initialize
    @board = Board.new
    @disp = Display.new (@board)
  end

  def display
    @disp.render(@board)
  end

  def get_input
    puts "Which piece would you like to move?"
    piece_to_move = gets.chomp.split(",")
    piece_to_move.map(&:to_i)

  end

  def move
    @board.move_piece(get_input, get_input)
  end

end
