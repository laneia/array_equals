# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  i = 0

  if (array1 == nil && array2 == nil) || (array1 == [] && array2 == [])
    return true
  elsif array1 == nil || array2 == nil
    return false
  end

  if array1.length == array2.length
    until i > array1.length
      if array1[i] != array2[i]
        return false
      end
      i += 1
    end
    return true
  end
  return false
end

array3 = [10, 20, 30, 40, 50, 60]
array4 = [10, 20, 30, 40, 50, 60, 70]
p array_equals(array3, array4)
