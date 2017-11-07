require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides_array = [@side1, @side2, @side3]
    if sides_array.inject(0, :+) <= 0 || sides_array.sort[2] >= sides_array.sort[0] + sides_array.sort[1]
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
