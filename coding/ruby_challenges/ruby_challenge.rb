=begin
filename: bigger_challenge.rb
  author: ben silbernagel
 project: coding: level up your ruby judo - viking code school
 purpose: ruby calisthenics
 details: creating a variety of methods that preform different functions.
=end

def power(base_num, exponent)
  raised_num = 1

  (exponent).times do  
  	num = raised_num
  	raised_num = base_num * num
  end

  return raised_num
end

def factorial(number)
	factor = 1

	number.downto(2) { |iterator| factor *= iterator }

	return factor
end

def uniques(list)
  new_list = [] 

  list.each { |item|
    unless new_list.include?(item)
  	  new_list.push(item)
    end
  }
  return new_list
end

def combinations(array_1, array_2)
  new_array = Array.new
  
  array_1.each { |item_1|
    array_2.each { |item_2|
      new_array.push("#{item_1 + item_2}")
    }
  }
  return new_array
end

def is_prime?(number)
  prime = true
  number_to_float = number.to_f
  
  (number - 1).downto(2) { |iterator| 
  	unless number_to_float % iterator != 0 then prime = false; end }
  return prime
end

def rectangle_area(rect_corners)
  subarray = Array.new
  array = Array.new

  ((rect_corners[0][0])..(rect_corners[1][0])).each do |x|
    ((rect_corners[0][1])..(rect_corners[1][1])).each do |y|
      subarray = []
      result = "#{x}, #{y}"
      subarray.push(result)
      array.push(subarray)
    end
  end

  return array    
end

def not_boarder_line?(overlap_area)
  line_x = []
  line_y = []

  overlap_area.each { |level0|
    level0.each { |level1|
    line_x.push(level1[0])
    line_y.push(level1[3])
    }
  }
  line_x.delete('4')
  line_y.delete('4')
  
  if line_x == [] || line_y == []
    return false
  else
  	return true
  end
end

def overlap(rect_area1, rect_area2)
  area1 = rectangle_area(rect_area1)
  area2 = rectangle_area(rect_area2)
  overlap_area = []

  # finds overlap area
  area1.each { |item1| 
  if area2.include?(item1) then overlap_area.push(item1); end }
  
  return not_boarder_line?(overlap_area)  
end

puts <<-eos
Test for the different methods:

Answer for power:\n #{power(9, 4)}

Answer for factorial:\n #{factorial(5)}

Answer for uniques:\n #{uniques([1, 2, 4, 2, "The", "The", "next", "day", "day"])}

Answer for combinations:\n #{combinations(["text","open"], ["book", "filer"])}

Answer for is_prime?:\n #{is_prime?(7)}

Answer for is_prime?:\n #{is_prime?(14)}

Answer for overlap:\n #{overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )}

Answer for overlap:\n #{overlap( [ [0,0],[1,4] ], [ [0, 4],[6,5] ] )}
eos