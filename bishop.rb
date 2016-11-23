require_relative 'piece'
require_relative 'slidable'

class Bishop < Piece
  include Slidable

  def initialize(color)
    super
    @symbol = (@color == :white ? " \u2657 " : " \u265D ")
  end
end
