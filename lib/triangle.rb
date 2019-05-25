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

  def is_triangle?
   self.side_1 + self.side_2 > self.side_3 && self.side_2 + self.side_3 > self.side_1 && self.side_1 + self.side_3 > self.side_2
  end

  def kind
    
      if self.side_1 == self.side_2 || self.side_2 == self.side_3 || self.side_3 == self.side_1
        self.type = :isosceles
      if self.side_1 == self.side_2 && self.side_2 == self.side_3 
        self.type = :equilateral
      if self.side_1 != self.side_2 && self.side_2 != self.side_3 && self.side_3 != self.side_1
        self.type = :scalene
    end
  end
  end

    if !is_triangle?
      begin
        raise TriangleError
        rescue TriangleError => error
          puts error.message
        end
    else
    self.type
  end

 self.type

end


  class TriangleError < StandardError
    def message
      "This is not a triangle"
    end
  end

end

