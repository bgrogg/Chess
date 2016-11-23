require_relative 'piece'
require_relative 'slidable'

class Pawn < Piece
  def initialize(color)
    super(color)
    @symbol = (@color == :white ? " \u2659 " : " \u265F ")
  end
end
