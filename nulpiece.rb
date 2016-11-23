require 'singleton'
require_relative 'piece'

class Nulpiece < Piece

  include Singleton

  def initialize
    @symbol = "   "
    @color = :none
  end

end
