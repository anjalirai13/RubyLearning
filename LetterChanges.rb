def LetterChanges(str)
str1 = ""
str = str.chomp!
j = 0

for i in 0...str.length
    ascii = str[i].ord
    if(ascii >= 97 && ascii <= 122)
      str1[j] = str[i].next
    else
      str1[j] = str[j]
    end
j +=1
end
  # code goes here
  return str1 
         
end
   
# keep this function call here    
puts LetterChanges(STDIN.gets)

