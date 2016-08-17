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
  
end


Husky = Puppy.new


Husky.fetch("ball")
Husky.speak(3)
Husky.roll_over
p Husky.dog_years(5)
Husky.high_five("left")