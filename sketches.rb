=begin

puts "#DELETE_IF METHOD"

array = ["a", 2, "4", "nine"]
todelete = ["a", 2]
puts array

puts

array.delete_if do |x|
	todelete.include?(x)
	end
puts array


puts
puts

puts "#SHOVEL METHOD"
shovelArray = []
shovelArray << "hello"
shovelArray << 4
puts shovelArray
puts shovelArray.index(4)


=begin Random (discrete uniform) sampling from arrays

The sample method selects an element at random from the array where each element has equal probability of being selected. This does not alter the array.
=end
=begin
die = [1,2,3,4,5,6]
roll1 = die.sample
roll2 = die.sample
puts [roll1, roll2]


cars = ["civic", "accord"]
makers = ["Honda", "Toyota"]

cars.each do |cars|
	makers.each do |makers|
		puts "#{cars} are made by #{makers}."
	end
end

=end
