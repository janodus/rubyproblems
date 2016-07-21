#Here's a method that allows you find single entry numbers 
#in an array, WITHOUT using .count :)

def non_duplicated_values(values)
dupes = []
current = 0
count = 0

i = 0

while i < values.length
    current = values[i]

values.map do |x|
  if x == current
    count += 1
  end
end

  if count == 1
  dupes.push(current)
  end

  count = 0
  i += 1
  end

puts dupes
end

non_duplicated_values([1,2,2,3,3,4,5])
#=> [1, 4, 5]
