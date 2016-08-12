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

#release 2

numbers = [1,2,3,4,7,8,9,10,12]
hash = {a: 1, b: 2, c: 3, d: 4, e: 5}

# 1
numbers.delete_if{ |number| number>10}
p numbers

hash.delete_if {|letter,number| letter >= :d}
p hash

# 2
numbers.select! { |number| number.even?}
p numbers

hash.select! { |letter,number| number.odd?}
p hash

# 3
numbers.keep_if {|number| number<6}
p numbers

hash.keep_if { |letter, number| letter == :a}
p hash

# 4
new_numbers = [1, 2, 3, 4, 5, 0]
other_numbers = new_numbers.take_while { |digit| digit < 4 } 
p other_numbers


# trying another method???? both complete the required task?
# more_numbers = other_numbers.drop_while { |digit| digit < 2 } 
# p more_numbers