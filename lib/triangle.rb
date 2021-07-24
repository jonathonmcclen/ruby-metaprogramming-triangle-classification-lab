class Triangle

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
      
    if self.legal_triangle
      
    else
      raise TriangleError
    end 
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @c == @a
      :isosceles
    elsif @a != @b && @a != @c && @c != @b
      :scalene
    end 
  end 

  def legal_triangle
    self.no_zero_sides && self.triangle_inequality
  end 

  def no_zero_sides
    @a > 0 && @b > 0 && @c > 0
  end 

  def triangle_inequality
    @a+@b > @c && @b+@c > @a && @c+@a > @b
  end 

  class TriangleError < StandardError
    " "
  end
end
