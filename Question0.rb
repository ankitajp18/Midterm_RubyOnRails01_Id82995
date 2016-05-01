#Question0 - Part(a)
#This function takes two integers, a and b, and calculates the sum of a and b, then returns the square of the sum.
def squared_sum(a,b)
  return (a+b)*(a+b)
end

#Question0 - Part(b)
#This method takes in an array of integers, sorts it, then increments every element by 1, and returns it. 
def sort_array_plus_one(a)
	sorted_a = a.sort
	return (sorted_a.map{|element| element+1})
end

#Question0 - Part(c)
#This method will return the first_name concatenated with the last_name, along with a space in between.
def combine_name(first_name, last_name)
	full_name = "#{first_name}" + " #{last_name}" 
	return (full_name)
end

answer_1 = squared_sum(3, 5)
puts "Squared sum of 3 and 5 is #{answer_1}"
#Output: Squared sum of 3 and 5 is 64

a = [5,7,1,3,2]
answer_2 = sort_array_plus_one(a)
puts "Original Array = #{a}, array after sorting and increment by 1 is #{answer_2}"
#Output: Original Array = [5,7,1,3,2], array after sorting and increment by 1 is [2,3,4,6,8]

answer_3 = combine_name('Howard', 'Chen')
puts answer_3
#Output: Howard Chen