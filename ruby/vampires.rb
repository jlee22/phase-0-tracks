puts "What is your name?"
name = gets.chomp

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



if name == "Drake Cula"
	puts "Definitely a vampire."
elsif name == "Tu Fang"
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