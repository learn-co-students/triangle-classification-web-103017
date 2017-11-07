require 'pry'
class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if validate
      if a == b && b == c
        return :equilateral
      elsif b == c || c == a || a == b
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end # --> end kind
    # if a + b < c || a + c < b || b + c < a
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    #   end
    # elsif a <= 0 || b <= 0 || c <= 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    #   end

    def validate
      if (a + b > c && a + c > b && b + c > a) && a > 0 && b > 0 && c > 0
        #binding.pry
        return true
      end
      #
      #   begin
      #     raise TriangleError
      #   rescue TriangleError => error
      #     puts error.message
      #   end
      # end
    end


end # --> end triangle class

class TriangleError < StandardError
  def message
    "The sum of two sides must be greater than the third side and all sides must be greater than 0."
  end

end
