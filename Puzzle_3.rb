# Program that takes input from user increment each alphabet by next and capitalize the vowels

def modify_string(str)
	modified = ""
	final_sentence = ""
	str.each_byte {|i|
		if(i >= 97 && i < 122)
			modified << i.next
		elsif(i == 122)
			modified << i - 25
		else
			modified << i
		end
	}

	modified.each_byte {|char|
	if(char == 97)
		final_sentence << (char - 32)
	elsif( char == 101 )
		final_sentence << (char - 32)
	elsif (char == 105)
		final_sentence << (char - 32)
	elsif (char == 111)
		final_sentence << (char - 32)
	elsif (char == 117)
		final_sentence << (char - 32)
	else		
		final_sentence << char
	end
	}
	puts final_sentence
end

puts "Enter the string for modification"
str = gets

puts "\nString entered before modification"
puts str

puts "\nstring after modification"
modify_string(str)