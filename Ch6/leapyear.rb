puts 'What is your starting year?'
syear=gets.chomp.to_i

puts 'What is your ending year?'
eyear=gets.chomp.to_i

current_year=syear

while current_year <= eyear
	testyear=false
	divby4=(current_year%4==0)
	divby100=(current_year%100==0)
	divby400=(current_year%400==0)

	if divby4 
		testyear=true
		if divby100 
			if divby400 
				testyear=true
			else
				testyear=false
			end
		end
	end
	if testyear 
		puts current_year.to_s + ' is a leap year'
	end
	current_year = current_year+1
end
