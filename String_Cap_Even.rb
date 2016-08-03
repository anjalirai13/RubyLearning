# Take input from user for every word capitalize the alphabet
# at even position and downcase the alphabet at odd position
puts "Enter the string"
input = gets()
j = 0
str = ""
output_array = []

# Split the string when space is there
input_array = input.split(" ")
input_array.each { |word|
	for i in 0...word.length

		# Check whether position is even or not
		if (i%2 == 0)

			# If it is even Capitalize it
			str << word[i].upcase
		elsif (i%2 == 1)

			# If it is odd downcase it
		 	str << word[i].downcase
		end
	end

	# Insert it in array
	output_array << str
	str = ""
	j +=1
}

# Join the words by spaces to form a sentence
result = output_array.join(" ")
p result