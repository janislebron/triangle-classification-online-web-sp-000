class Triangle
  def initialize(*args)
    @sides = *args.sort
  end

  def kind
    raise TriangleError if @sides.any? {|s| s <= 0} or
      @sides[0]+ @sides[1] <= @sides[2]
    case @sides.uniq.size
         begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end

    
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end


class TriangleError < StandardError
def message
    puts "This is not a valid triangle."
  end
end

end


