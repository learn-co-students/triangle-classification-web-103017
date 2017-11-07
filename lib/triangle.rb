class Triangle
  # write code here

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    #Should be a way to write this programatically
    if @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError

end
