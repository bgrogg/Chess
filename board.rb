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
    starting_board = Array.new(8) { Array.new(8) {[Nulpiece.new]} }
    nob = noble_pieces
    nob2 = noble_pieces
    pawn = Array.new(8) { Pawn.new }
    pawn2 = Array.new(8) { Pawn.new }

    assign_positions(0, nob, starting_board)
    assign_positions(7, nob2, starting_board)
    assign_positions(1, pawn, starting_board)
    assign_positions(6, pawn2, starting_board)

    starting_board
  end

  def self.assign_positions(row, starting_set, starting_board)
    8.times do |idx|
      starting_board[row][idx] = starting_set[idx]

      starting_set[idx].position = [row, idx]
    end

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
    s_row, s_col = start_pos
    e_row, e_col = end_pos
    @board[s_row, s_col], @board[e_row, e_col] = @board[e_row, e_col], @board[s_row, s_col]
    # piece = @board[s_row, s_col]
    # @board[e_row, e_col] = piece
    # @board[s_row, s_col] = Nulpiece.new
    # piece.position = [e_row, e_col]
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

git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Victor Guillen'; GIT_AUTHOR_EMAIL='victor_guillen@hotmail.com'; GIT_COMMITTER_NAME='Victor Guillen'; GIT_COMMITTER_EMAIL='victor_guillen@hotmail.com';" HEAD
