=begin
- Write Program that using date-time ruby operations and ranges, accept start year, end year and date, and program will check that
given date is inside that start year and end year or not, also pass date in string like this: "Tue, 10 Aug 2010"
- it should return output like following:
 start year: 2010,
 end year: 2020,
 date: "Tue, 10 Aug 2010"
 Yes, 10-08-2010 is between 01-01-2010 to 01-01-2020
=end
require 'date'
puts "start year: "
start_year = gets.chomp.to_i
date_format = "%d-%m-%Y"
start_date = DateTime.new(start_year).strftime(date_format) 
puts "end year: "
end_year = gets.chomp.to_i
end_date = DateTime.new(start_year).strftime(date_format)

puts "date: "
user_date = gets.chomp
puts date = DateTime.parse(user_date) # parse user date into DateTime object

puts date.strftime(date_format) # format date to specific format

if(start_year..end_year) === date.year
  puts "Yes, #{date.strftime(date_format) } is between #{start_date} to #{end_date}"
elsif
  puts "No, #{date.strftime(date_format) } is not between #{start_date} to #{end_date}"
end
