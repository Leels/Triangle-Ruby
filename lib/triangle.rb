class Triangle
  attr_reader(:side1, :side2, :side3)
  def initialize(side1, side2, side3)
    @side1 = side1 || 0
    @side2 = side2
    @side3 = side3
  end

  def equilateral?
    @side1 == @side2 && @side1 == @side3
  end

  def isosceles?
    not_equilateral = @side1 != @side2 || @side1 != @side3
    not_equilateral && (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
  end

  def scalene?
    @side1 != @side2 && @side1 != @side3 && @side2 != @side3
  end

  def not_triangle?
    (
      @side1 >= (@side2 + @side3) ||
      @side2 >= (@side1 + @side3) ||
      @side3 >= (@side1 + @side2)
    )
  end

end
