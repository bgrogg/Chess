require "byebug"
require_relative "board.rb"
require_relative "game.rb"

class Display

  def initialize(board)
    @grid = self.color_grid
    @board = board
  end

  def render(board)
    @board = board
    puts p_render
  end

  def p_render
    board_str = ""
    8.times do |i|
      8.times do |j|
        # byebug
        board_str << fill_cell(@board.board[i][j].symbol, @grid[[i, j]])
      end
      board_str << "\n"
    end
    board_str
  end

  def fill_cell(p_symbol, color)
    "#{p_symbol}".colorize( :background => color )
  end

  def color_grid
    b = :white
    grid_hash = Hash.new { [] }
    8.times do |i|
      8.times do |j|
        grid_hash[[i, j]] = b
        b = (b == :white ? :green : :white )
      end

      b = (b == :white ? :green : :white )
    end

    grid_hash
  end

  def []=(pos, piece)
    row, col = pos
    @board[row][col] = piece
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

end
