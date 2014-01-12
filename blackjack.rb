# Blackjack Game
# TD

puts "=> Player 1, please enter your name:"
player1_name=gets.chomp
puts "Greetings " + player1_name

def calculate_total(cards)
	# map calculation of integers and/or suits onto each element of array in deck
	arr = cards.map{|e| e[1]}

	total = 0
	arr.each do |value| # checks each element of the array to calculate if Ace, suit, or number and augments total
		if value == "A"
			total += 11
		elsif value.to_i == 0 # suits
			total += 10
		else
			total += value.to_i
		end
end

	# correct for Aces
	arr.select{ |e| e == "A"}.count.times do
		total -= 10 if total > 21
	end

	total
end


suits = ['H', 'D', 'S', 'C']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

# create product array
deck = suits.product(cards)
deck.shuffle! #shuffle deck

mycards=[]
dealercards=[]

#deal initial round of cards
mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

# Show hands

puts "Dealer has #{dealercards[0]} and #{dealercards[1]} for a total of #{dealertotal}"
puts "Player has #{mycards[0]} and #{mycards[1]} for a total of #{mytotal}"
puts ""
puts player1_name + ", what would you like to do? 1) hit, 2) stay"
hit_or_stay=gets.chomp

# My turn

# Blackjack outcome
if mytotal == 21
	puts "Congratulations! You hit Blackjack! You win!"
end

 while mytotal < 21
#	puts "What would you like to do? 1) hit, 2) stay"
#	hit_or_stay = gets.chomp

	if !['1','2'].include?(hit_or_stay)
		puts "Error: You must enter 1 or 2"
		next
	end

	if hit_or_stay == "2"
		puts "You chose to stay."
		break
	end

#		while dealertotal < 17
			#hit
#			new_card=deck.pop
#			puts "Dealing new card: #{new_card}"
#			dealercards << new_card
#			dealertotal = calculate_total(dealercards)
#			puts "Dealer total is now: #{dealertotal}"
	
#		if dealertotal == 21
#			puts "Dealer hits Blackjack. You lose!"
#			exit
#			elsif dealertotal > 21
#				puts "Dealer busted! You win!"
#			else dealertotal > mytotal
#				puts "Dealer total is higher. Dealer wins!"
#				break
#			end
#		end


	# Hit outcome
	new_card = deck.pop
	puts "Dealing cards to Player 1: #{new_card}"
	mycards << new_card
	mytotal = calculate_total(mycards)
	puts "Your total is now: #{mytotal}"

if mytotal == 21
	puts "Congratulations, you hit Blackjack! You win!"
	exit
elsif mytotal > 21
	puts "You busted! You lose."
	exit
end

# Dealer turn

if dealertotal == 21
	puts "Dealer has Blackjack. You lose!"
	exit
end

 while dealertotal < 17
	#hit
	new_card = deck.pop
	puts "Dealing new card: #{new_card}"
	dealercards << new_card
	dealertotal = calculate_total(dealercards)
	puts "Dealer total is now: #{dealertotal}"

	if dealertotal == 21
		puts "Dealer hits Blackjack. You lose!"
		exit
	elsif dealertotal > 21
		puts "Dealer busted! You win!"
		exit
	end
end
	
# Compare Player 1 hand vs. Dealer hand

	puts "Dealer cards: "
		dealercards.each do |card|
			puts "=> #{card}"
		end
		puts ""

	puts "Your cards: "
		mycards.each do |card|
			puts "#{card}"
		end
		puts ""

	if dealertotal < mytotal
		puts "Congratulations " + player1_name + ", you win!"
	elsif dealertotal > mytotal
		puts "Sorry " + player1_name + ", you lose!"
	else
		puts "Tie game!"
	end

 exit

end

