puts 'Please enter as many words as you would like:'

words = gets.chomp
a = [words]

while words != ''
	words=gets.chomp
	a.push words
end

puts a.sort

