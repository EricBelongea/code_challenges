# How would we find a duplicate file in an array to One Million

array = (1..1000000).to_a
array.push(55)


def find_duplicate(array)
  sorted = array.sort
  sorted.each_with_index do |element, index|
    if element == array[index-1]
      return element
    end
  end
end

puts find_duplicate(array)


sorted_array = array.sort

def find_duplicate(sorted_array)
  sorted_array.each_with_index do |element, index|
    if element == sorted_array[index-1]
      return element
    end
  end
end

require 'benchmark'
include Benchmark
# Measure time for the original solution (Unsorted)
time_original = Benchmark.measure do
  find_duplicate(array)
end.total

puts "Unsorted time #{time_original}"

sorted_time = Benchmark.measure do
  find_duplicate(sorted_array)
end.total

puts "Sorted time #{time_original}"