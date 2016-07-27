#A quick method that returns a new string of unique array items.

def my_unique(array)
  uniques = []
  dupes = []

  array.map do |x|
    if !uniques.include?(x)
      uniques.push(x)
    elsif uniques.include?(x)
      dupes.push(x)
    end
  end

  uniques.map do |x|
    if dupes.include?(x)
      uniques.delete (x)
    end
  end
puts "Original Array: #{array}"
puts "Uniques: #{uniques}"
puts "Dupes: #{dupes}"

end


puts (my_unique(["hello", "you", "hello", "my"]))
puts (my_unique([12, 12, 11, 12, 12]))
