puts 'Please enter your statement:'
statement = gets.chomp

speakup = 'SPEAK UP, SONNY!'
heard = 'NO, NOT SINCE ' + (rand(20) + 1930).to_s

while statement != 'BYE!'
	if statement != statement.upcase
		puts speakup
		statement=gets.chomp
	else
		puts heard
		statement=gets.chomp
	end
end


