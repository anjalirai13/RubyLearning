@len = 0
def one_digit(num)
	str = @dictionary[num]
	@len += str.length
end

def two_digit(num)
	if(@dictionary[num])
		str = @dictionary[num]
		@len += str.length
	elsif(num >= "21")
		chop_two_digit = num.chop
		num_int = num.to_i
		remainder = (num_int%10).to_s
		chop_two_digit << "0"
		str = @dictionary[chop_two_digit]
		@len += str.length
		one_digit(remainder)
	elsif(num == "0")
		str = @dictionary[num]
		@len += str.length
	end
end

def three_digit(num)
	first_digit = (num.chop).chop
	num_int = num.to_i
	remainder = (num_int%100).to_s
	str = @dictionary[first_digit]
	@len += str.length
	@len += "hundred".length
	remainder_len = remainder.length
	case remainder_len
	when 1
		if(remainder != "0")
			one_digit(remainder)
		end
	when 2	
		two_digit(remainder)
	end
end

def dictionary(num)
	@dictionary = {"0" => "zero", "1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", 
			  	"7" => "seven", "8" => "eight", "9" => "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", 
			  "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", 
			  "18" => "eighteen", "19" => "nineteen", "20" => "twenty", "30" => "thirty", "40" => "fourty", "50" => "fifty", 
			  "60" => "sixty", "70" => "seventy", "80" => "eighty", "90" => "ninety"}
	num = num.to_s
	num_len = num.length
	case num_len
	when 3
		three_digit(num)
	when 2
		two_digit(num)
	when 1
		one_digit(num)
	end
end

range = 1..1000
range.each do |num|
	if(num == 1000)
		@len += "one thousand".length
		@len = @len -1
	else
		dictionary(num)
	end
end
puts "length of word is #{@len}"