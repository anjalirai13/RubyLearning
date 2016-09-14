# This ruby script will search for the number with few conditions.
# You can iterate for n time n should not be greater than 100
# Your input array size should be greater than 100
# Your array input should not be greater than 100
# It will return the position of array if found

puts "For how many iterations you want to do the search"
p t = gets.to_i
if (t == 0 || t >= 100 || t <= 0)
	puts "Please provide no of iterations ranging from 1 to 99"
	t = gets.to_i
end
result_array = []
position = nil
result = nil
for i in 0...t
	search_array = []
	if (t != 0)
		if (t < 100)
			puts "Enter the size of array"
			n = gets.to_i
			if (n == 0 || n >= 100 || n < 0)
				puts "Please provide input of array size ranging from 1 to 99"
				n = gets.to_i
			end
			if (n != 0)
				if (n < 100 || n < 0)
					puts "Enter the array elements one by one"
					for k in 0...n
						search_array << gets.to_i
						until (search_array.last <= 100 && search_array.last > 0)
							puts "You have entered outside of range. Enter again"
							search_array.pop
							search_array << gets.to_i
						end
					end
					puts "Enter the value you want to search"
					search_value = gets.to_i
					until (search_value <= 100 && search_value < 0)
						puts "You have entered outside of range. Enter again"
						search_value = nil
						search_value = gets.to_i
					end
					search_array.each_index { |index|
						if (search_value == search_array[index])
 							position = index
 							result = true
						end
					}
					if (result == true)
						result_array << position
						result = false
					else
						result_array << "not found"
					end
				else
					puts "You did not entered correct range"
				end
			else
				puts "You did not entered correct range"
			end
		else
			puts "You did not entered correct range"
		end
	else
		puts "You did not entered correct range"
	end
end

p result_array