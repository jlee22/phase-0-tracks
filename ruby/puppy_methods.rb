class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(integer) 
  integer.to_i.times {puts "Woof!"}
  end 	
  
  def roll_over
  puts "*rolls over*"
  end

  def dog_years(age)
  age.to_i * 7
  end

  def high_five(string)
	puts "raises #{string} paw"
  end
  
  def initialize
  	puts "initializing new puppy instance ..."
  end
end

class Kitten

  def initialize
  	puts "initializing a new kitten instance ..."
  end

  def meow
  	puts "Meow!"
  end

  def hunt(animal)
  	puts "The kitten caught a #{animal}!"
  end

end



Kitten_arr = []
50.times do |new_kitten|
	new_kitten = Kitten.new
	Kitten_arr << new_kitten	
end

# p Kitten_arr

Kitten_arr.each do |kitten|
	kitten.meow
	kitten.hunt("rat")
end


# Husky = Puppy.new
# Husky.fetch("ball")
# Husky.speak(3)
# Husky.roll_over
# p Husky.dog_years(5)
# Husky.high_five("left")

