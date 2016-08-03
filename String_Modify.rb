# Take input from user which is full of alphanumeric and special characters
# Remove all special and numeric characters from string and print input
puts "Enter the string"
input = gets()
p input.downcase!
j = 0
str = ""
output_array = []

# Split the string when space is there
input_array = input.split(" ")
input_array.each { |word|
	for i in 0...word.length

		# Check whether it is string or not
		if(('a'..'z') === word[i])
			str << word[i]
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