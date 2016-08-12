#Release 0
def block_test
	puts "I am hungry!"
	yield("Steak","Ice Cream")
	puts "Our block worked and I requested what I wanted to eat"
end

block_test{|food1, food2|puts "I would like to eat some #{food1}, #{food2}"}

#Release 1
cats = ["tabby", "calico", "siamese"]
dogs = {retriever: "golden", husky: "white"}

p cats
cats.each do |cat|
 p cat.capitalize
end
p cats

p dogs
dogs.each do |breed, color|
 puts "#{breed} has a #{color} coat"
end 
p dogs

p cats
cats.map! do |cat|
 cat.capitalize
end
p cats

# Testing syntax
# cats.each { |cat| p cat.capitalize }