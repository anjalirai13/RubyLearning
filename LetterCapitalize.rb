def LetterCapitalize(str)
res_arr = []
str_arr = str.split(" ")
str_arr.each do | word |
   res_arr << word.capitalize 
end
  # code goes here
  return res_arr 
         
end
   
# keep this function call here    
puts LetterCapitalize(STDIN.gets)  
