# This program will print the number in lcd pattern. Number has to be provided by user 
require 'debugger'
class Lcd

    # Initialize all the numbers
    def initialize(number, size)
      @first_row  = {1 => " ", 2 => " _ ", 3 => "_ ", 4 => "   ", 5 => " _ ", 6 => " _ ", 7 => "_ ", 8 => " _ ", 9 => " _ ", 0 => " _ "}
      @second_row = {1 => "|", 2 => " _|", 3 => "_|", 4 => "|_|", 5 => "|_ ", 6 => "|_ ", 7 => "_|", 8 => "|_|", 9 => "|_|", 0 => "| |"}
      @third_row  = {1 => "|", 2 => "|_ ", 3 => "_|", 4 => "  |", 5 => " _|", 6 => "|_|", 7 => " |", 8 => "|_|", 9 => "  |", 0 => "|_|"}
      @number = number.to_s.split(//).collect { |c| c.to_i }
      @size = (size.empty?) ? 1 : size.to_i
    end

    # print the lcd pattern one by one
    def show_lcd
      lcd_size
      @number.each do |num|
        print @first_row[num]
        print " "
      end
      puts "\n"
      @number.each do |num|
        print @second_row[num]
        print " "
      end
      puts "\n"
      @number.each do |num|
        print @third_row[num]
        print " "
      end
    end
    def lcd_size              
      if @size > 1
         @number.each do |num|
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
                 #debugger
                 space_size << " "          
               end
               @first_row[num].gsub!(/_/, hor_row)
               @first_row[num].gsub!(/  /, space_size)
               @second_row[num].gsub!(/_/, hor_row)
               @second_row[num].gsub!(/#{space_reg_exp}/, space_size)
               @third_row[num].gsub!(/_/, hor_row)
               @third_row[num].gsub!(/#{space_reg_exp}/, space_size)
            end
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