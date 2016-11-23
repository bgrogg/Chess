require_relative 'piece'
require_relative 'slidable'

class Queen < Piece
  include Slidable

  def initialize(color)
    super
    @symbol = (@color == :white ? " \u2655 " : " \u265B ")
  end
end
