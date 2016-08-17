# Design a new class: Race Car
# 3 attributes: color, top-speed, price
# 3 methods: accelerate, brake, open doors
# Have to initialize
# Have attr_reader and attr_accessor

class Race_car
	attr_reader :color, :top_speed, :price, :number_of_passengers
	attr_accessor :color,:price

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

end



# Test code for release 1
# ferrari = Race_car.new("red", 200, 100000)
# ferrari.accelerate(350)
# ferrari.brake
# ferrari.open_doors
