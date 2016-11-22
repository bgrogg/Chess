require_relative 'board.rb'
require_relative 'display.rb'

class Game

  attr_accessor :board

  def initialize
    @board = Board.new
    @display = Display.new (@board)
  end

  def display
    @display.render
  end

  def get_input
    puts "Which piece would you like to move?"
    piece_to_move = gets.chomp.split(",")
    piece_to_move.map(&:to_i)
    # puts "Where would you like to move?"
    # place_to_move = gets.chomp.split(",")
    # place_to_move.map(&:to_i)

    # [piece_to_move, place_to_move]
  end

  def move
    @board.move_piece(get_input, get_input)
  end

end
