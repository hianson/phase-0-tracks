# Create a new list
#
# Method to create a list create_list(items)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 	create new hash
#   split string into separate items
# 	iterate over each item in the array
# 	add each key to a hash
#   set default quantity of each key to 1
#   print the list to the console
# output: hash

grocery_list = {}

def create_list(items, grocery_list)
	item_arr = items.split(" ")
	item_arr.each do |item|
		grocery_list[item] = 1
	end
end

# create_list("carrots apples cereal pizza", grocery_list)


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # append item and quantity to list
# output: true/false

def add_item(list, item_name, item_quantity)
  list[item_name] = item_quantity
end

# add_item(grocery_list, "bananas", 5)


# Method to remove an item from the list
# input: list, item name
# steps:
  # remove item name and its quantity from list
# output: true/false

def remove_item(list, item_name)
  list.delete(item_name)
end

# remove_item(grocery_list, "apples")

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
  # change item and quantity to list
# output: dictionary['cat']

def update_list(list, item_name, item_quantity)
  list[item_name] = item_quantity
end

# update_list(grocery_list, "cereal", 2)

# Method to print a list and make it look pretty, print_list()
# input:
# steps:
# 	iterate through hash to format keys and its values
# 	print keys and values
# output: hash (item: quantity)

def print_list(grocery_list)
  puts "*" * 20
  puts "****GROCERY LIST****"
	grocery_list.each do |key, value|
		puts "#{key}: #{value}"
	end
	puts "*" * 20
end

# Create a new list
# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

create_list("Lemonade", grocery_list)
update_list(grocery_list, "Lemonade", 1)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update_list(grocery_list, "Ice Cream", 1)
print_list(grocery_list)

# Reflection
# What did you learn about pseudocode from working on this challenge?
	# Pseudocode should not be language-specific and should 'iterate' through everything that happens to an argument when it's passed through a method.
# What are the tradeoffs of using arrays and hashes for this challenge?
	# Hashes are more complex in that they will allow you to assign a value to the item. Arrays will only list the items without giving us a chance to provide any context for those items.
# What does a method return?
	# Methods will implicitly return the last expression which is evaluated, otherwise explicitly what you ask it to return. We learned that using puts at the end of a method will still return nil, so we will have to watch out for these expressions and what they return, in the future.
# What kind of things can you pass into methods as arguments?
	# Pretty much all data types including the ones we used: hashes, strings, integers
# How can you pass information between methods?
	# Like we did with the grocery_list, we defined this outside the scope of the methods, then passed in that grocery_list as an argument to the methods. We didn't get a chance to test passing in another method as an argument.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# The biggest concept was regarding which variables are available to use and how to be more aware of those variables' scopes, and that you must pass in a variable in order to manipulate it in a method (unless they are globally defined using $).
