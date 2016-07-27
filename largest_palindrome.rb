def find_palindrome
   @largest_num = 0
   for i in 100..999
      for j in 100..999
         number = (i*j).to_s
         if(number.eql? number.reverse)
            if(number.to_i > @largest_num)
               @largest_num = number.to_i
               @num1 = i
               @num2 = j
            end
         end
      end
   end
end

find_palindrome
puts "The highest palindrome is #{@largest_num}, numbers are #{@num1} and #{@num2}"