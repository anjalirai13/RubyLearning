puts "Enter the string to make a pair of 5 word"
str = gets.upcase.chomp
comp_len = str.length 
len = 0
res_str = ""
j = 0

p = Proc.new do | len |
	if (('A'..'Z') === str[len])
		res_str << str[len]
	else 
		j = j-1
	end
	j +=1
end

until (comp_len <= len)
	if(j >= 5)
		res_str << " "
		p.call(len)	
		j = 0  
	elsif (str[len] == " ")
		len = len + 1
		p.call(len)
	else
		p.call(len)
	end
	len = len + 1
end

p res_str