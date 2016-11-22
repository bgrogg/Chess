require "byebug"
require_relative "piece.rb"
require_relative "display.rb"


class Board

  attr_reader :board

  def initialize
    @board = Board.init_pos
    @piece = []
    @pos = [0, 0]
  end

  def self.init_pos
    # byebug
    temp_board = Array.new(8) { Array.new(8) {[Nulpiece.new]} }
    nob = noble_pieces
    pawn = Array.new(8) { Pawn.new }

    temp_board.first.each_with_index { |el, idx| temp_board[0][idx] = nob[idx] }
    temp_board.last.each_with_index { |el, idx| temp_board[7][idx] = nob[idx] }

    8.times { |idx| temp_board[1][idx] = pawn[idx] }
    8.times { |idx| temp_board[6][idx] = pawn[idx] }
    temp_board
  end

  def self.noble_pieces
    part_1 = [Rook.new, Knight.new, Bishop.new, Queen.new, King.new]
    part_2 = [Bishop.new, Knight.new, Rook.new]
    part_1 + part_2
  end

  def self.render
    puts @board
  end


  def move_piece(start_pos, end_pos)
  end

  def []=(pos, piece)
    row, col = pos
    board[row][col] = piece
  end

  def [](pos)
    row, col = pos
    board[row][col]
  end

end
