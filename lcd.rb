# This program will print the number in lcd pattern. Number has to be provided by user 
require 'debugger'
class Lcd
   # debugger
   # Initialize all the numbers
   def initialize(number, size)
      @line_first  = {1 => " ", 2 => " _ ", 3 => "_ ", 4 => "   ", 5 => " _ ", 6 => " _ ", 7 => "_ ", 8 => " _ ", 9 => " _ ", 0 => " _ "}
      @line_second = {1 => "|", 2 => " _|", 3 => "_|", 4 => "|_|", 5 => "|_ ", 6 => "|_ ", 7 => "_|", 8 => "|_|", 9 => "|_|", 0 => "| |"}
      @line_third  = {1 => "|", 2 => "|_ ", 3 => "_|", 4 => "  |", 5 => " _|", 6 => "|_|", 7 => " |", 8 => "|_|", 9 => "  |", 0 => "|_|"}
      @number = number.to_s.split(//).collect { |c| c.to_i }
      @size = (size.empty?) ? 1 : size.to_i
   end

   # print the lcd pattern one by one
   def show_lcd
      @number.each do |num|
         lcd_size(num, "first_row")
      end
      puts "\n"
      @number.each do |num|
        lcd_size(num, "second_row")
      end
      puts "\n"
      @number.each do |num|
        lcd_size(num, "third_row")
      end
   end

   # Adjust the size
   def lcd_size(num, row_num)
      first_row, second_row, third_row = {}, {}, {}           
      space_size = "  "
      space_reg_exp = "  "
      hor_row = "_"
      if(not @size.eql? 1 or not num.eql? 1)
         hor_row = "_"*@size
         if(num.eql? 7 or num.eql? 0)
            space_size = " "
            space_reg_exp = " "             
         end
         for i in 1...@size
            space_size << " "          
         end
         if(row_num.eql? "first_row")
            first_row[num]  = @line_first[num].gsub(/_/, hor_row)
            first_row[num]  = first_row[num].gsub(/  /, space_size)
            print first_row[num]
            print " "
         elsif (row_num.eql? "second_row")
            second_row[num] = @line_second[num].gsub(/_/, hor_row)
            second_row[num] = second_row[num].gsub(/#{space_reg_exp}/, space_size)
            print second_row[num]
            print " "
         else
            third_row[num]  = @line_third[num].gsub(/_/, hor_row)
            third_row[num]  = third_row[num].gsub(/#{space_reg_exp}/, space_size)
            print third_row[num]
            print " "
         end
      end
   end
end

puts "Enter the number to see in lcd format and enter the size"
number = gets.to_s.chomp
size = gets.to_s.chomp
num_lcd = Lcd.new(number, size)
puts "Your number #{number} in digital pattern"
num_lcd.show_lcd   