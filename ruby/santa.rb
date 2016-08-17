class Santa
	attr_reader :gender, :ethnicty, :reindeer_ranking, :age
	attr_accessor :gender, :ethnicity, :reindeer_ranking, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
						"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{reindeer_ranking}"
		puts "Age: #{age}"
	end

	#getter methods for attributes
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

	# def age
	# 	@age
	# end
	#setter methods
	
end



def generate_santas(number_of_santas)
example_genders = ["agender", "female", "bigender", "male",
					 "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "latino", "white", "pacific islander",
					 "native american", "asian", "other"]
	number_of_santas.times do |santa|
		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
		santa.age = rand(140)
		p santa.about
	end

end

puts "How many santas would you like to generate?"
answer = gets.chomp
generate_santas(answer.to_i)

# Testing release 2 & 3
# santa = Santa.new("male","asian")
# santa.get_mad_at("Vixen")
# santa.celebrate_birthday
# santa.about
# santa.age = 3
# santa.ethnicity = "hispanic"
# santa.get_mad_at("Comet")
# santa.about



# Testing release 0
# Bob = Santa.new
# Bob.speak
# Bob.eat_milk_and_cookies("chocolate cookie")


# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African",
#  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
