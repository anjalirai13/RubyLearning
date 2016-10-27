# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.
# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

require 'prime'
require "debugger"
prime_array, resultArray, truncable_prime = [], [], []
non_trunc_prime = [2, 3, 5, 7]
@l, sum = 0, 0
Prime.each(5000) do |prime|
  prime_array << prime
end

prime_array.each do |prime_number|
	next if non_trunc_prime.include? prime_number
#next if not prime_number.eql? 3797
	prime_num = prime_number.to_s
	rev_prime = prime_num
	#debugger
	for i in 1...prime_num.length 
		prime_num = prime_num.chop
		no = prime_num.to_i
		resultArray << Prime.prime?(no)
	end
	#debugger
	for j in 1...rev_prime.length 
		rev_no = rev_prime.to_i % (10**(rev_prime.length - 1))
		resultArray << Prime.prime?(rev_no)
		rev_prime = rev_no.to_s
	end
	result = resultArray.all?
	if(result)
        truncable_prime << prime_number
		@l +=1
	else
		resultArray = []
	end
	break if (@l >= 11)
end

truncable_prime.each do |num|
	num = num.to_i
	sum +=num
end

puts "The sum of first 11 truncable_prime is #{sum} and numbers are #{truncable_prime}\n"