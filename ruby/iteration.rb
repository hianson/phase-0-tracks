#BLOCK
def method()
puts "This is before the block."
3.times {|x| puts "I'm printing this block #{x} times."}
puts "This is after the block."
end
method

#ARRAYS
new_array = ["Audrey Tatou", "Amelie", "L'Auberge Espagnole", "The Da Vinci Code"]

new_array.map! {|x| x + "ok"}
p new_array

#HASHES
new_hash = {
"date" => "7/24/17",
"day" => "Monday",
"month" => "July"
}
new_hash.each {|x| puts x}

#DELETE IF METHOD
number_array = [1,3,5,7,9]
number_array.delete_if{|x| x < 5}
p number_array

number_hash = {"a" => 3, "b" => 5, "c" => 7 }
number_hash.delete_if {|key, value| value < 5}
p number_hash

#KEEP IF METHOD
number_array = [1,3,5,7,9]
number_array.keep_if{|x| x < 5}
p number_array

number_hash = {"a" => 3, "b" => 5, "c" => 7 }
number_hash.keep_if {|key, value| value < 5}
p number_hash

#INDEX METHOD
index_array = ["a", "b", "c"]
p index_array.index("b")

#KEYS METHOD
index_hash = {"a" => 3, "b" => 5, "c" => 7}
p key_array = index_hash.keys
p index_hash[key_array[0]]

#DROP_WHILE
arr = [1,2,3,4,5]
p arr.drop_while { |x| x < 3 }

#REJECT 
hash = {"a" => 100, "b" => 200, "c" => 300 }
p hash.reject {|k,v| k < "b" }
