require "byebug"
require_relative "piece"
require_relative "display"
require_relative 'rook'
require_relative 'knight'
require_relative 'king'
require_relative 'queen'
require_relative 'bishop'
require_relative 'pawn'
require_relative 'nulpiece'


class Board

  attr_reader :board

  def initialize
    @board = Board.init_pos
    @piece = []
    @pos = [0, 0]
  end

  def self.init_pos
    # byebug
    starting_board = Array.new(8) { Array.new(8) {} }
    nob = noble_pieces(:black)
    nob2 = noble_pieces(:white)
    pawn = Array.new(8) { Pawn.new(:white) }
    pawn2 = Array.new(8) { Pawn.new(:black) }
    nul1 = Array.new(8) { Nulpiece.instance }
    nul2 = Array.new(8) { Nulpiece.instance }
    nul3 = Array.new(8) { Nulpiece.instance }
    nul4 = Array.new(8) { Nulpiece.instance }

    assign_positions(0, nob2, starting_board)
    assign_positions(1, pawn, starting_board)
    assign_positions(2, nul1, starting_board)
    assign_positions(3, nul2, starting_board)
    assign_positions(4, nul3, starting_board)
    assign_positions(5, nul4, starting_board)
    assign_positions(6, pawn2, starting_board)
    assign_positions(7, nob, starting_board)

    @board  = starting_board
  end

  def self.assign_positions(row, starting_set, starting_board)

    8.times do |idx|
      starting_board[row][idx] = starting_set[idx]

      starting_set[idx].position = [row, idx]
    end

  end

  def self.noble_pieces(color)

    part_1 = [Rook.new(color), Knight.new(color)]
    part_2 = [Bishop.new(color), Queen.new(color)]
    part_3 = [King.new(color), Bishop.new(color)]
    part_4 = [Knight.new(color), Rook.new(color)]
    part_1 + part_2 + part_3 + part_4
  end

  def self.render
    puts @board
  end


  def move_piece(start_pos, end_pos)
    s_row, s_col = start_pos
    e_row, e_col = end_pos
    @board[s_row][s_col], @board[e_row][e_col] = @board[e_row][e_col], @board[s_row][s_col]

  end

  def []=(pos, piece)
    row, col = pos
    board[row][col] = piecer
  end

  def [](pos)
    row, col = pos
    board[row][col]
  end

end
