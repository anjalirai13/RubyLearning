class Stack_Imp
	class << self 
		$stack_array = []
		def insert_value(value)
			len = $stack_array.length
			if(len <= 5)
				$stack_array << value
			else
				puts "Stack is full. Cannot Insert"
			end
			puts $stack_array
		end

		def delete_value
			if ($stack_array.empty?)
				puts "Stack is empty. Nothing to delete"
			else
			    value_deleted = $stack_array.pop
				puts "Element #{value_deleted} deleted"
			end
			puts $stack_array
		end
	end
end

puts "Stack Operation\nEnter 1 to insert\n2 to delete and\npress 0 to exit"
choice = gets.to_i
while (choice != 0)
	case choice
	when 1
		puts "Enter the value you want to insert"
		value = gets
		Stack_Imp.insert_value(value)
	when 2
		Stack_Imp.delete_value
	end
	puts "Enter your choice again. Press 0 to exit"
	choice = gets.to_i
end