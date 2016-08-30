require 'prime'
prime_array = []
i = 0
Prime.each(1000000000) do |prime|
  if (i >= 10001)
  	break
  end
  prime_array << prime
  i +=1
end

puts "10001st prime number is #{prime_array[10000]}"