# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create empty grocery list hash
  # converting inputted strings into keys 
  # and set default quantity of each key to 1
  # print the list to the console [can you use one of your other methods here?]
  # print each hash index using .each with a string telling what's on the list
# output: 
    # hash
def create_list(items)
    grocery_list = {}
    items_array = items.split(' ')
    items_array.each do |item|
        grocery_list[item] = 1
    end
    puts "Here is your grocery list so far:"
    grocery_list.each do |item, quantity|
        puts "#{item}: #{quantity}"
    end
    grocery_list
end
# Method to add an item to a list
# input: grocery list, item name, and optional quantity
# steps: 
    # take item and quantity and add the pair to grocery_list hash
    # if item inputted already exists just update quantity
# output:
    # print updated list
def add_item(list, item, quantity = 1)
    list[item] = quantity
        puts "Here is your updated grocery list:"
        list.each do |item, quantity|
        puts "#{item}: #{quantity}"
    end
end
# Method to remove an item from the list
# input: grocery list, item
# steps:
    # use Hash#delete to remove item from grocery list
# output: updated list
def remove_item(list, item)
    list.delete(item)
    puts "Here is your updated grocery list:"
    list.each do |item, quantity|
    puts "#{item}: #{quantity}"
    end
end
# Method to update the quantity of an item
# input: list, item, quantity
# steps: 
    # updating quanity of item in given list
# output: updated list
def update_quantity(list, item, quantity)
    list[item] = quanity
    puts "Here is your updated grocery list:"
    list.each do |item, quantity|
    puts "#{item}: #{quantity}"
    end
end
# Method to print a list and make it look pretty
# input: list
# steps: capitalize first letter of each key
# output: updated prettier list
def make_pretty(list)
    puts "Here is your prettier grocery list:"
    list.each do |item, quantity|
    puts "#{item.capitalize}: #{quantity}"
    end
end
grocery_list = create_list("carrots apples cereal pizza")
add_item(grocery_list, "water", 4)
remove_item(grocery_list, "water")
update_quantity(grocery_list, "carrots", 5)
make_pretty(grocery_list)
# p grocery_list

# What did you learn about pseudocode from working on this challenge?
# -Pseudocode helps me break down difficult and or lengthy challenges
# to managable tasks. It allows for a step-by-step approach.

# What are the tradeoffs of using arrays and hashes for this challenge?
# - Hashes and arrays are chosen based on what real life scenarios 
# they are trying to represent. In our challenge today, the hash structure
# allowed us to modify the quantity (value) easily, which with arrays we
# wouldn't be able to do as well.

# What does a method return?
# - Method returns what we want it to, typically a value after performing
# specific tasks

# What kind of things can you pass into methods as arguments?
# - Methods in ruby can pretty much take in any object, so int, string,
# data structures, booleans, etc.

# How can you pass information between methods?
# - For this assignment, we had methods return a value that we use as
# arguments in another method.

# What concepts were solidified in this challenge, 
# and what concepts are still confusing?
# - We solidified the concept of modifying hashes, running iterations,
# and implicit return. We also learned about refactoring and workflow.
# - We do not know all the ways to answer the challenge presented, we simply
# did what worked and what made the code readable to our understanding.