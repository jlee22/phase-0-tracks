# ask for the hamsters name
# volume level
# determine color
# is a good candidate for adoption
# age

puts "What is the hamsters name?"
name = gets.chomp

puts "On a scale of 1 to 10 rank the volume of the hamster"
volume = gets.chomp.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption?(answer yes or no)"
answer = gets.chomp

if answer == "yes"
  adoption = true
elsif answer =="no"
  adoption = false
end

puts "How old is the hamster?(years to the nearest month)"
age = gets.chomp.to_f

