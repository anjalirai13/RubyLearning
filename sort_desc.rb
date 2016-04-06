def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] < list[i+1]
        temp = list[i]
        list[i] = list[i+1]
        list[i+1] = temp # swap values
        swapped = true
      end
    end    
  end

  list
end

a = [89, 23, 12, 67, 45, 78, 24, 56, 87, 73, 37] 
first = 0

puts "unsorted list"
for i in 0...a.length
	puts a[i]
end

puts " \n"
bubble_sort(a)

puts "sorted list in descending order"
for i in 0...a.length
	puts a[i]
end