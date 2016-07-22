=begin
Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

EXPLANATION:
Very simple #map solution to finding all odd numbers in an array, and returning their sum (solution).
=end

def oddball_sum(numbers)
oddSum = 0

numbers.map do |x|

  if x % 2 != 0
    oddSum += x
  end
  end

puts oddSum
return oddSum

end


oddball_sum([1,2,3,4,5]) == 9
oddball_sum([0,6,4,4]) == 0
oddball_sum([1,2,1]) == 2
