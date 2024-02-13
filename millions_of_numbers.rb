
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