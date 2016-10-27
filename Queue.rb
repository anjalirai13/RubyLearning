# This is queue implementation using ruby
class Queue_Imp
	class << self
	$queue_array = []
		def insert_value(value)
			len = $queue_array.length
			if(len <= 5)
				$queue_array << value
			else
				puts "Queue is full. Cannot Insert"
			end
		end

		def delete_value
			if ($queue_array.empty?)
				puts "Queue is empty. Nothing to delete"
			else
			    value_deleted = $queue_array.delete_at(0)
				puts "Element #{value_deleted} deleted"
			end
		end
	end
end

puts "Queue Operation Enter\n1. Insert\n2. Delete\n3. 0 for exit"
choice = gets.to_i
while (choice != 0)
	case choice
	when 1
		puts "Enter the value you want to insert"
		value = gets.chomp
		Queue_Imp.insert_value(value)
		p $queue_array
	when 2
		Queue_Imp.delete_value
		p $queue_array
	end
	puts "Enter your choice again. Enter\n1. Insert\n2. Delete\n3. 0 for exit"
	choice = gets.to_i
end