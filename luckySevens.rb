=begin Write a function lucky_sevens?(numbers), which takes in an array of integers and
returns true if any three consecutive elements sum to 7.
=end

def lucky_sevens?(numbers)

# A simple check for endcases with 2 possible scenarios
		if (numbers[0] + numbers[1] + numbers[numbers.length - 1]) == 7 || (numbers[0] + numbers[numbers.length - 2] + numbers[numbers.length - 1]) == 7
			puts "Returning TRUE due to endcases"
		return true
		end

# Now that we know that the endcases don't add up to 7, we start the loop.
# We're going to check i, the next number, and the number after that as we loop

i = 0
while i < numbers.length
	second = i + 1
	third = i + 2

# Ruby will return 'nil' on indexes that don't exist... which means that our loop has reached a point where it's only able to check for 2 characters (i + 2 does not exist).
	if numbers[third] == nil
		puts "Returning FALSE due to no numbers adding up to 7"
		return false
# Starting at i = 0, however, each iteration will add up the three numbers including i, the number next to it, and the number next to that.
	elsif numbers[i] + numbers[second] + numbers[third] == 7
		puts "Returning TRUE for #{i} #{second} and #{third}"
		return true
		end
		i += 1
		end
end

puts (lucky_sevens?([2,1,5,1,0]) == true)
puts (lucky_sevens?([0,-2,1,8]) == true)
puts (lucky_sevens?([7,7,7,7]) == false)
puts (lucky_sevens?([3,4,3,4]) == false)
puts (lucky_sevens?([2,4,3,1]) == true)
puts (lucky_sevens?([2,4,2,1,9,1]) == true)
puts (lucky_sevens?([3,4,4,1,9,1,7,6,5,2,1,4]) == true)
puts (lucky_sevens?([3,4,4,1,9,-1,1,7,6,5,2,6,4]) == true)
