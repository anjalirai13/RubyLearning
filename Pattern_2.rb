# This program will draw the diamond shaped pattern
# It will ask the user upto which count you want to draw the pattern

n = gets()
n = n.to_i
j = n/2 # Decrementing the value by 2 for the downward steps
if (n%2 == 0)
	j = j-1
end
y = n-2

# Draw the upper pattern of diamond
1.upto(n) { |k|
	# For odd value Print the * 
	if (k%2 != 0)
		if(j >= 0)
			for z in 1..j
				printf " "
			end
		end
		for  k in 1..k
			printf "*"
		end
	j = j - 1 
	end
	puts
}

# Check if its even to avoid extra spaces
if(y%2 == 0)
	y = y-1
else
	puts
end
j = 0

# Draw the down pattern of diamond
y.downto(1) { |i|
	# For odd value Print the * 
	if (i%2 !=0)
		if(j >= 0)
			# Print 
			for z in 0..j
				printf " "
			end
		end
		for i in 1..i
			printf "*"
		end
	j = j + 1 
	end
	puts
}