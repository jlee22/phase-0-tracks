# Design a new class: Race Car
# 3 attributes: color, top-speed, price
# 3 methods: accelerate, brake, open doors
# Have to initialize
# Have attr_reader and attr_accessor

class Race_car
	attr_reader :number_of_passengers
	attr_accessor :color, :top_speed, :price

	def initialize (color, top_speed, price)
		@color = color
		@top_speed = top_speed
		@price = price
		@number_of_passengers = 4
	end

	def accelerate(mph)
		if mph.to_i < top_speed.to_i
			puts "The car has accelerated to #{mph} mph!"
		else
			puts "The car has accelerated to the top speed of #{top_speed} mph!"
		end
	end

	def brake
		puts "The car comes to a stop"
	end

	def open_doors
		puts "Beep boop - *door opens*"
	end

	def about
		puts "Color: #{@color}"
		puts "Top Speed: #{@top_speed}"
		puts "Price: #{@price}"
		puts "Number of Passengers: #{@number_of_passengers}"
	end	

end

# Release 2. In the context of my class,
# it makes more sense to ask the user how many cars
# they would like to create.
race_car_collection = []
# puts "How many race cars would you like to create?"
# num_of_cars = gets.chomp

# num_of_cars.to_i.times do {}

# puts "What color would you like?"
# 	color = gets.chomp
# puts "How fast do you need the car to go?"
# 	top_speed = gets.chomp.to_i
# puts "How much will it cost?"
# 	price = gets.chomp.to_i

# race_car_collection << Race_car.new(color,top_speed,price)
# puts "Next car:"
# end

# p race_car_collection

# Loops until user is done
user_is_done = false
until user_is_done == true
puts "Let's build a car!"
puts "What color would you like?"
	color = gets.chomp	 
puts "How fast do you need the car to go?"
	top_speed = gets.chomp
puts "How much will it cost?"
	price = gets.chomp
race_car_collection << Race_car.new(color,top_speed.to_i,price.to_i)
	puts "Are you done making cars? (y/n)"
	answer = gets.chomp
	if answer == "y"
	user_is_done = true
	puts "Thank you and have a nice day!"
	elsif answer == "n"
	user_is_done = false
	end
end

puts "Here are the cars you made:"
race_car_collection.length.times do |i|
puts "Car ##{i+1}:"
race_car_collection[i].about
end



# Test code for release 1
# ferrari = Race_car.new("red", 200, 100000)
# ferrari.accelerate(350)
# ferrari.brake
# ferrari.open_doors
