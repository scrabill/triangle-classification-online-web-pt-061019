class Triangle
  # write code here

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # Single responsibility principle / separations of concerns
    # Methods should only have one job
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    # elsif @a < 0 || @b < 0 || @c < 0
    #   raise TriangleError
    elsif @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    elsif @a == @b && @b == @c && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    # elsif @a != @b && @b != @c && @a != @c
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
