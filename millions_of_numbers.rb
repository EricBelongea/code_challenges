# Instructions
# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.

# Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.

# Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.

# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

# Small Scale Example Below

#     #Ruby
#     nums_1 = [1, 2, 4, 5, 8]
#     nums_2 = [2, 3, 5, 7, 9]
#     nums_3 = [1, 2, 5, 8, 9]
#     find_matches(nums_1, nums_2, nums_3)
#     => [2, 5]

#     #JavaScript
#     nums1 = [1, 2, 4, 5, 8]
#     nums2 = [2, 3, 5, 7, 9]
#     nums3 = [1, 2, 5, 8, 9]
#     findMatches(nums1, nums2, nums3)
#     => [2, 5]


def find_matches(arr1, arr2, arr3)
  result = []
  
  arr1.each do |element|
    if arr2.include?(element) && arr3.include?(element)
      result << element
    end
  end
  return result
end



nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]

matches = find_matches(nums_1, nums_2, nums_3)
puts matches.inspect




# Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

require 'set'

def find_matches_optimized(arr1, arr2, arr3)
  result = []
  seen_in_arr2 = Set.new
  seen_in_arr3 = Set.new

  arr2.each { |element| seen_in_arr2.add(element) }
  arr3.each { |element| seen_in_arr3.add(element) }

  arr1.each do |element|
    if seen_in_arr2.include?(element) && seen_in_arr3.include?(element)
      result << element
    end
  end
  return result
end

arr1 = [1, 2, 3, 4, 5]
arr2 = [3, 4, 5, 6, 7]
arr3 = [5, 6, 7, 8, 9]

matches = find_matches_optimized(arr1, arr2, arr3)
puts matches.inspect


# Below is the GPT explanation to why sets are more effiecient than arrays. 

# Transforming arrays into sets increases efficiency mainly because sets offer faster lookup times compared to arrays. In Ruby, arrays use linear search for element lookup,
# meaning the time it takes to find an element in an array is proportional to the size of the array (O(n)). On the other hand, sets in Ruby use hash tables, providing constant time complexity for average-case lookups (O(1)).

# When you transform arr2 and arr3 into sets (seen_in_arr2 and seen_in_arr3), you gain the advantage of faster element membership checks. Instead of using include? on arrays, which has O(n) time complexity for each lookup,
# you use include? on sets, which has O(1) time complexity on average.

# Here's a breakdown of the efficiency improvements:

# Array Lookup (Before):

# arr2.include?(element) has O(n) time complexity, where n is the size of arr2.
# arr3.include?(element) has O(n) time complexity, where n is the size of arr3.
# Set Lookup (After):

# seen_in_arr2.include?(element) has O(1) time complexity on average.
# seen_in_arr3.include?(element) has O(1) time complexity on average.
# By using sets, the overall time complexity of the find_matches_optimized function is significantly improved, resulting in a more efficient solution for finding common elements in three arrays.


# Array 1
longarr1 = (1..1000).to_a

# Array 2
longarr2 = (1001..2000).to_a

# Array 3
longarr3 = (2001..3000).to_a

# Ensure five common numbers
common_numbers = [5, 15, 30, 40, 50]

# Add common numbers to arrays
longarr1.push(*common_numbers)
longarr2.push(*common_numbers)
longarr3.push(*common_numbers)

# Shuffle arrays to randomize order
longarr1.shuffle!
longarr2.shuffle!
longarr3.shuffle!

require 'benchmark'

# Measure time for the original solution
time_original = Benchmark.measure do
  find_matches(longarr1, longarr2, longarr3)
end.total

puts "Original solution time: #{time_original}"

# Measure time for the optimized solution
time_optimized = Benchmark.measure do
  find_matches_optimized(longarr1, longarr2, longarr3)
end.total

puts "Optimized solution time: #{time_optimized}"





time_original = Benchmark.measure do
  find_matches(nums_1, nums_2, nums_3)
end.total

puts "Original solution time: #{time_original}"

# Measure time for the optimized solution
time_optimized = Benchmark.measure do
  find_matches_optimized(nums_1, nums_2, nums_3)
end.total

puts "Optimized solution time: #{time_optimized}"
