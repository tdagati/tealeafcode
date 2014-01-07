puts 'What is your favorite number?'
favorite_number=gets.chomp
favorite_number=(favorite_number.to_i + 1)
puts 'Perhaps ' + favorite_number.to_s  + ' would be an even better number?'