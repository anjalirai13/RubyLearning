def LongestWord(sen)
    largest_word = ""
    long_len = 0
sen_arr = sen.split(" ")
sen_arr.each do | word |
    len = word.length
    if(long_len > len)
        largest_word = word
    end
end
  # code goes here
  return largest_word 
         
end
   
# keep this function call here    
puts LongestWord(STDIN.gets)