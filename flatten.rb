class Array
  def custom_flatten
    result = []

    each do |element|
      if element.is_a?(Array)
        result.concat(element.custom_flatten)
      else
        result << element
      end
    end

    result
  end
end

nested_array = [1, [2, [3, 4], 5], 6]
flattened_array = nested_array.custom_flatten
# puts flattened_array.inspect

mega_nested = [[1,2], [3,[4,5],6]]
flat2 = mega_nested.custom_flatten
# puts flat2.inspect

another_nest = [[1,2],[3,[4,5]], 6]
flat3 = another_nest.custom_flatten
# puts flat3.inspect


## Showing how Concat works.

arr1 = [1,2,3]
arr2 = [4,5,6]

ca = arr1.concat(arr2)

# puts ca.inspect
