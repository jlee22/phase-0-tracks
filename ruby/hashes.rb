# Ask for users' name, age, # of children, has pets?, fav color, income/yr.
# Ask user to choose a key and update the value of it (unless they type none)
# Store all variables in hash and prints it out at the end


puts "What is your name"
name = gets.chomp.capitalize

puts "What is your age"
age = gets.chomp.to_i

puts "How many children do you have?"
children = gets.chomp.to_i

puts "Do you have any pets (y/n)"
answer = gets.chomp
if answer == "y"
	pets = true
elsif answer == "n"
	pets = false
end

puts "What is your favorite color"
fav_color = gets.chomp

puts "What is your income per year? (nearest dollar)"
income = gets.chomp.to_i

	

form = {name: name, age: age,  number_of_children: children, have_pets: pets, favorite_color: fav_color, yearly_income: income}

puts "Which key would like to update? (name, age, number_of_children, have_pets, favorite_color, yearly_income, or type none to skip)"
mistake = gets.chomp
if mistake != "none"
	puts "What would you like to update the value to?"
	new_value = gets.chomp
	form[mistake.to_sym] = new_value
end


p form
