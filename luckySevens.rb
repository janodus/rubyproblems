#Write a function lucky_sevens?(numbers), which takes in an array of integers and
#returns true if any three consecutive elements sum to 7.

=begin
EXPLANATION :
I'm using very basic and rudimentary solutions. This solution takes advantage of the fact that the digits MUST BE next to each other. Edge cases work in all situations where the method would actually be called (there needs to be atleast 4 numbers in the array).

The main body uses 3 digits directly next to each other to see if a sum of 7 by adding 3 numbers is possible. As Ruby counts nils (end cases that + 0 to the sum of 3 numbers when the final or penultimate number is an index that does not exist), the method automatically defaults to FALSE when the second or third digit to be added are nil.

Cheers!

=end

def lucky_sevens?(numbers)

		if (numbers[0] + numbers[1] + numbers[numbers.length - 1]) == 7 || (numbers[0] + numbers[numbers.length - 2] + numbers[numbers.length - 1]) == 7
			puts "Returning TRUE due to endcases"
		return true
		end

i = 0
while i < numbers.length
	second = i + 1
	third = i + 2

	if numbers[i + 1] == nil || numbers[i + 2] == nil
		puts "Returning FALSE due to nil"
		return false
	elsif numbers[i] + numbers[second] + numbers[third] == 7
		puts "Returning TRUE for #{i} #{second} and #{third} "

		return true
	end

	i += 1
end
puts "Returning FALSE because something has gone wrong"
return false
end

puts (lucky_sevens?([2,1,5,1,0]) == true)
puts (lucky_sevens?([0,-2,1,8]) == true)
puts (lucky_sevens?([7,7,7,7]) == false)
puts (lucky_sevens?([3,4,3,4]) == false)
puts (lucky_sevens?([2,4,3,1]) == true)
puts (lucky_sevens?([2,4,2,1,9,1]) == true)
puts (lucky_sevens?([2,4,4,1,9,1,7,6,5,2,1,4]) == true)
