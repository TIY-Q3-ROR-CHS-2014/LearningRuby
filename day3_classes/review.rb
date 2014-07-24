# While loops

# Will continue going until the conditions are met.
x = 2
y = 10
while x < y
	if x < y
		puts "X is less than Y"
	else
		puts "Y is less than X"
	end
	x += 2
end

# Put methods through a while loop
@variable = "hello world"

def hello_world
  puts @variable
end

while true
  hello_world
end

# Random Numbers

answer = rand(0..100)

# How to increment or decriment a value

a = 10

a += 2
# a = a + 2
a -= 3
# a = a - 2

# Exiting a loop
while true
  # This is how you exit a loop
  break
end

# boolean operators

|| # or
&& # and
== # is equal
!= # not equal
< # less then
> # greater then
>= # greater then or equal to
<= # less then or equal to

# .pop/.push

a = [1,2]
a.push(4)
a.pop

# Abort
# Ends teh whole program
if a == b
  abort
end

# .each

a = [1,2,3,4,5]
a.each do |number|
  puts number
end

# Making a range array

a = (1..100).to_a

# <<
# Pushing onto an array

a = "Hello World"
a << "Dude"
# => "Hello WorldDude"
a = [1,2,3]
a << 4



# Vocab
=begin
Syntax - the grammar of the computer language

Scope - Where a variable exists. 

Instance Variable - In ruby (@). A variable that exists in the scope of the entire file you're in.

Global Variable - In ruby ($). A variable that is accessible through the entire program.

Local variable - A variable with limited scope. Only exists within the current block/function

LIFO - Last In First Out
FIFO - First In First Out
FILO - First In Last Out

Block - A section of code that only exists within then section

Concatenation - link (things) together in a chain or series
=end


# Code Formatting

# snake_case
#   ex: this_is_a_variable
# Classes:
#   ex: ClassName
# arrays, hashes
#   ex: array[0]
#   ex: hash[:name]
# Tabbing
#   Indentions will occur when things are nested
# while Dude
#   if hello
#     if dude man
#     elsif test
#     else
#     end
#   elsif more stuff
#   end
# end
