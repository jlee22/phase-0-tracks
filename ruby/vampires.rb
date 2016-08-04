puts "How many employees will be processed?"
process = gets.chomp.to_i
until process == 0

puts "What is your name?"
name = gets.chomp.downcase

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

if age == 2016-birth_year
	answer_year = true
elsif age != 2016-birth_year
	answer_year = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
order = gets.chomp

if order == "y"
  garlic = true
elsif order =="n"
  garlic = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
answer = gets.chomp
if answer == "y"
  enroll = true
elsif answer =="n"
  enroll = false
end



puts "Name your allergies one at a time (input done when no more allergies to be named)" 
allergies = gets.chomp
if allergies == "sunshine"
	answer_year = false
	garlic = true
	enroll = false
	allergies = "done"
elsif allergies == "done"
	allergies == "done"
end
until allergies == "done"
	puts "Name another allergy you have (input done when no more allergies to be named)"
	allergies = gets.chomp
	if allergies == "sunshine"
		answer_year = false
		garlic = true
		enroll = false
		allergies = "done"
	end

end




if name == "drake cula"
	puts "Definitely a vampire."
elsif name == "tu fang"
	puts "Definitely a vampire."
elsif answer_year && (garlic || enroll) == true
	puts "Probably not a vampire."
elsif !answer_year && (garlic || enroll) == true
	puts "Probably a vampire."
elsif !answer_year && !(garlic && enroll) == true
	puts "Almost certainly a vampire."
else
	puts "Results inconclusive"
end


process -= 1
end