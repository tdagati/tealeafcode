puts 'Please enter your statement:'
statement = gets.chomp

speakup = 'SPEAK UP, SONNY!'
heard = 'NO, NOT SINCE ' + (rand(20) + 1930).to_s
numberbyes = 0

while numberbyes < 3
	if statement == 'BYE!'
		numberbyes=numberbyes+1
		puts 'Please enter your statement:'
		statement=gets.chomp
	elsif statement != statement.upcase
			puts speakup
			statement=gets.chomp
		else
			puts heard
			statement=gets.chomp
		end
	end
