puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "Hhat year were you born?"
birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
order = gets.chomp

if order == "y"
  adoption = true
elsif answer =="n"
  adoption = false
end

puts "Would you like to enroll in the company’s health insurance? (y/n)"
answer = gets.chomp
if answer == "y"
  adoption = true
elsif answer =="n"
  adoption = false
end