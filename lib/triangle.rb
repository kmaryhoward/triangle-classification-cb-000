class Triangle
  attr_accessor :type

  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def side_1
    @side_1
  end

  def side_2
    @side_2
  end

  def side_3
    @side_3
  end

  

  def kind
     a,b,c = [self.side_1, self.side_2, self.side_3].sort
     raise TriangleError if a<= 0 or a + b <= c
     if a == c 
       
       self.type = :equilateral
     elsif a == b || b == c 
       self.type = :isosceles
     else 
       self.type = :scalene
     
    end
  end

    


  class TriangleError < StandardError
    def message
      "This is not a triangle"
    end
  end

end

