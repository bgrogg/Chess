require "colorize"
class Tile

  attr_reader :tile_b, :tile_w

  def initialize
  end

  def tile_b(piece)
    t_b = "#".colorize(:black)
    "#{t_b}#{t_b}#{t_b}\n#{t_b}#{piece}#{t_b}\n#{t_b}#{t_b}#{t_b}"
  end

  def tile_w(piece)
    t_w = "#".colorize(:white)
    "#{t_w}#{t_w}#{t_w}\n#{t_w}#{piece}#{t_w}\n#{t_w}#{t_w}#{t_w}"
  end

end
