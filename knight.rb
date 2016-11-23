require_relative 'piece'
require_relative 'stepping'

class Knight < Piece
  include Stepping

  def initialize(color)
    super
    @symbol = (@color == :white ? " \u2658 " : " \u265E ")
  end
end
