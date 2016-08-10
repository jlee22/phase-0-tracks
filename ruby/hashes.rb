# Ask for users' name, age, # of children, has pets?, fav color, income/yr.
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

p form
