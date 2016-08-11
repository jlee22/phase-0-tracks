#Release 0
def block_test
	puts "I am hungry!"
	yield("Steak","Ice Cream")
	puts "Our block worked and I requested what I wanted to eat"
end

block_test{|food1, food2|puts "I would like to eat some #{food1}, #{food2}"}



