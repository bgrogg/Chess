require_relative 'piece'
require_relative 'slidable'

class Rook < Piece
  include Slidable

  def initialize(color)
    super
    @symbol = (@color == :white ? " \u2656 " : " \u265C ")
  end
end
