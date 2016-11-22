require "byebug"
require "colorize"
require_relative "board.rb"

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

class Nulpiece < Piece

  def initialize(color)
    super
    @symbol = " "
  end

end

class King < Piece

  def initialize(color)
    super
    @symbol = (@color == :white ? "\u2654" : "\u265A")
  end

end

class Queen < Piece
  def initialize(color)
    super
    @symbol = (@color == :white ? "\u2655" : "\u265B")
  end
end

class Rook < Piece
  def initialize(color)
    super
    @symbol = (@color == :white ? "\u2656" : "\u265C")
  end
end

class Bishop < Piece
  def initialize(color)
    super
    @symbol = (@color == :white ? "\u2657" : "\u265D")
  end
end

class Knight < Piece
  def initialize(color)
    super
    @symbol = (@color == :white ? "\u2658" : "\u265E")
  end
end

class Pawn < Piece
  def initialize(color)
    super(color)
    @symbol = (@color == :white ? "\u2659" : "\u265F")
  end
end
