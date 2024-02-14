# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string
# consisting of one or more of the following letters:

# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

#     #Ruby
#     return_to_origin?("GRGRGRG")
#     => true

#     JavaScript
#     returnToOrigin("GRGL")
#     => false

# We know that return to location does NOT depend on which direction robot is facing

def move(string)
  position = {L: 0, G: 0, R: 0}
  string_array = string.chars
  string_array.each do |move|
    if move == 'G'
      position[:G] += 1
    elsif move == "L"
      position[:L] += 1
    elsif move == "R"
      position[:R] += 1
    end
  end
  if position[:G] % 4 == 0 && position[:R] % 3 == 0 || position[:L] % 3 == 0
    puts true
  else
    puts false
  end
end


string = "GRGRGRG"

# move(string) # true

string2 = "GLGRG"
s3 = "GLGRGRGRGG"
# move(string2) # false
# move(s3) # true



def return_to_origin?(string)
  position = { x: 0, y: 0 }

  string.each_char do |move|
    case move
    when 'G'
      position[:y] += 1
    when 'L'
      position[:x] -= 1
    when 'R'
      position[:x] += 1
    end
  end
  # require 'pry'; binding.pry
  # The robot returns to the origin if both x and y are zero
  if position[:x] % 3 == 0 && position[:y] % 4 == 0
    puts true
  else
    puts false
  end
end

# return_to_origin?(string2)

# def has_moves(string)
#   position = { x: 0, y: 0 }
#   array_string = string.chars
#   array_string.each_char do |move|
#     if move == "G"
#       position[:y] += 1
#     else

#     end 
    
    
#   end
#   require 'pry'; binding.pry
# end

# has_moves(string)