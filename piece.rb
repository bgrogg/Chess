require "byebug"
require "colorize"
require "singleton"
# require_relative "board"
# require_relative 'rook'

class Piece

  attr_accessor :position, :symbol, :movement

  def initialize(color)
    @position = [nil, nil]
    @movement = [[]]
    @color = color
    @symbol = ""
  end

  def []=(pos, piece)
    row, col = pos
    board[row][col] = piece
  end

  def [](pos)
    row, col = pos
    board[row][col]
  end

  def position=(position)
    @position = position
  end

  def symbol=(symbol)
    @symbol = symbol
  end

  def movement=(movement)
    @movement = movement
  end

end
