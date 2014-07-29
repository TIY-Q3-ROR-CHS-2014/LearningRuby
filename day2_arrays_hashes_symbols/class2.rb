# Scope

puts "Hello world"

a = [1,2,3,4, "String", "Dude", 432]
puts a[0]
puts a[2]
puts a[6]

names = ["Nick", "Kevin (The Code Wrangler)", "Calvin", "Sally", "Andrew"]

names.each do |name|
  # This is the users name: name
  puts "This is the users name: #{name}"
end
data = [1, "Sam", 4, 5, 1234]

data.each do |some_variable|
  puts "This is some text"
  puts some_variable
end

data.each do
  puts "Hey man"
end

numbers = [5,4,3,2,1, nil]
numbers.each do |number|
  puts "*" * 100
  print numbers[0]
  puts number
end
numbers[0]
first_person = {
  name: "Nick Bucciarelli",
  age: 26,
  eye_color: "Brown",
  hair_color: "Brown"
}
puts first_person[:name]
puts first_person[:eye_color]
a = :name

another_person = {
  "name" => "Belinda Hare",
  "eye_color" => "Green",
  "hair_color" => "Brown"
}

third_person = {
  :name => "Jamie Kingston",
  :eye_color => "Green",
  :hair_color => "Brown",
  "children" => 2
}


people = [
  {name: "Sam Waller", eye_color: "Blue"},
  {name: "Will Fisher", eye_color: "Brown"},
  first_person,
  third_person,
  another_person
]

people.each do |person|
  print "Name: "
  puts person[:name]
  print "Eye Color: "
  puts person[:eye_color]
end

people.map do |person|
  puts "hey dude"
  person[:name]
end

people.each { |person| puts person[:name] }

def display_data display, data
  puts "Persons #{display}: #{data}"
  data
end 

def display_name name
  puts "Persons name: #{name}"
  name
end

def display_eye_color eye_color
  puts "Persons Eye Color: #{eye_color}"
  eye_color
end

def display_hair_color hair_color
  puts "Persons Hair Color: #{hair_color}"
  hair_color
end

display_name("Lance")
def do_math
  math = 2+2
  puts "Hey Anna #{math}"
  return math
end

a = [
  [1,2,3],
  [4,5,6]
]
a[0][1]
# => 2
a[1][2]
# => 6

def display_information person
  display_data("Name", person[:name])
  display_data("Hair Color", person[:hair_color])
  display_data("Eye Color", person[:eye_color])
end

people.each do |person|
  display_information(person)
end

