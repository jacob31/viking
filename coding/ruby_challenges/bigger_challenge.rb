=begin
filename: bigger_challenge.rb
  author: ben silbernagel
 project: coding: level up your ruby judo - viking code school
 purpose: create a counting game
 details: count through 1 to 100, each player saying a number.
          when the number is divisable by 7, then next person 
          will be the previous player.  when the number is divisable by 11,
          then skip the next player.
=end

# changes the direction.  
# based of if the number is divisable by seven.
def direction?(number, direction)
  if number % 7 != 0 
  	return direction
  else
  	return ! direction
  end
end


def skip?(number)
  number % 11 == 0
end


# user inputs
puts "How many friends are going to play the counsdting game?"
number_friends = $stdin.gets.chomp.to_i

puts "What number should we count up to?"
input_number = $stdin.gets.chomp.to_i


# sets starting variables
friend = 0
number = 1
direction = false
skip = false


until number > input_number

  # keeps number of friends with in the correct range
  if friend <= 0 || friend >= (number_friends + 1)
  	if direction == false
  	  friend = 1
    else 
  	  friend = number_friends
    end
  end

  # setting direction
  direction = direction?(number, direction)
  
  # sets skipping of friend
  skip = skip?(number)

  #displays text message
  print "Friend #{friend} says: #{number}\n\n"
  number += 1

  # switches direction
  if direction == true 
  	friend -= 1 
  else
  	friend += 1
  end

  # skips friend
  if skip == true && direction == true
  	friend -= 1
  elsif skip == true && direction == false
  	friend += 1
  end

end