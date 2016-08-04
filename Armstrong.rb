# Find the armstrong number for three digits.
# An armstrong number is a number which should be 
# equal to sum of cube of all digits
# e.g. 153 1^3 + 5^3 + 3^3 = 153

armstrong_num = []
100.upto(999) do | num |
	num1 = num%10
	div = num/10
	num2 = div%10
	div = div/10
	num_cube = (num1 ** 3) + (num2 ** 3) + (div ** 3)
	if(num == num_cube)
		armstrong_num <<  num
	end
end

p "Armstrong number are: #{armstrong_num}"