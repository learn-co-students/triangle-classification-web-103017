require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    thesides = [@side1, @side2, @side3]
    # binding.pry
    if @side1 * @side2 * @side3 <= 0 || thesides.sort[2] >= thesides.sort[0] + thesides.sort[1]
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "Not a triangle"
  end
end

# Pry.start
