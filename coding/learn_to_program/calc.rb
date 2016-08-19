=begin
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
=end

# number of hours in a year (not a leap year)

minutes_in_hour = 60
hours_in_day = 24
months = {  "January" => 31, 
	     "February" => 28, 
	        "March" => 31, 
	        "April" => 30, 
	          "May" => 31,
	         "June" => 30, 
	         "July" => 31,
	       "August" => 31,
	    "September" => 30,
	      "October" => 31,
	     "November" => 30,
	     "December" => 31}

decade = 10
hours_in_year = hours_in_day * months.values.each



puts "The number of hours in a year are #{hours_in_year}."
=begin
puts "The number of minutes in a decade are #{minutes_in_decade}."
=end