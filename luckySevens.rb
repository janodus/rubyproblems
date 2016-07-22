#Write a function lucky_sevens?(numbers), which takes in an array of integers and
#returns true if any three consecutive elements sum to 7.

=begin
EXPLANATION :
I'm using very basic and rudimentary solutions. This solution takes advantage of the fact that the digits MUST BE next to each other. Edge cases work in all situations where the method would actually be called (there needs to be atleast 4 numbers in the array).

As for the main body of the array, I used simple index positions to loop through all array items that can add 3 digits: i, i + 1, and i + 2. I'm also taking advantage of the fact that Ruby does not penalize for nil array indexes (as would be the case once the loop reaches the penultimate digit in the array).

Added an extra test case for edge cases, as I don't think one was provided.

Cheers!

=end

def lucky_sevens?(numbers)

	if (numbers[0] + numbers[1] + numbers[numbers.length - 1]) == 7 || (numbers[0] + numbers[numbers.length - 2] + numbers[numbers.length - 1]) == 7
    puts "true"
		return true
	end

	i = 0
	while i < numbers.length
		if (numbers[i].to_i + numbers[i + 1].to_i + numbers[i + 2].to_i) == 7
		puts "true"
		return true
		end
	i += 1
	end
	puts "false"
	return false
end

lucky_sevens?([2,1,5,1,0]) == true
lucky_sevens?([0,-2,1,8]) == true
lucky_sevens?([7,7,7,7]) == false
lucky_sevens?([3,4,3,4]) == false
lucky_sevens?([2,4,3,1]) == true
