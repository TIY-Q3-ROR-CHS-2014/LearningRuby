# Arrays
# Loops/ Iterating over arrays
# Hashes/ key-value store / Symbols
# Touched on variable scope
# Functions/Methods
# Return values
# Escape Characters
# Parameters/Arguments

variable_name = [1,2,3,4]
character_1 = {
	name: "Mario",
	body_structure: "Short fat",
	clothing: [
		"Red Hats",
		"Overalls",
		":{ )"
	],
	health: 100,
	damage: 2
}

character_2 = {
	name: "Snips",
	body_structure: "Short long lanky",
	clothing: [
		"Fur Armor",
		"Cow Costume",
		": ]"
	],
	health: 1000,
	damage: 20
}

character_3 = {
	name: "Bob",
	body_structure: "Huge. Muscles everywhere",
	clothing: [
		"Canadian Tuxedo",
		"Denim for lyfe, yo",
		": |"
	],
	health: 50,
	damage: 1
}


char_array = [character_1, character_2, character_3]
combat_1 = char_array.shuffle![0]
combat_2 = char_array[1]

# a = "asdf"
# b = "jkl;"
# puts a + b
# puts combat_1[:health]

def check_win char1, char2
	if char1[:health] > 0
		puts char1[:name] + " wins!"
	else
		puts char2[:name] + " wins!"
	end
end

while (combat_1[:health] > 0) && (combat_2[:health] > 0)
	puts combat_1[:name],combat_1[:health]
	puts combat_2[:name],combat_2[:health]
	combat_1[:health] -= combat_2[:damage]
	combat_2[:health] -= combat_1[:damage]
	# when health is <= 0, display "person wins"
end

check_win( combat_1, combat_2 )

a = [
	[{name: "Dude"},{name: "Lance"},{name: "Sam"},{name: "Bro"}],
	[{name: "Brochacho"},{name: "Michael"},{name: "Casey"},{name: "Broseidon"}],
	[{name: "Brosef Stalin"},{name: "Brosellini"},{name: "Brodalf Hitler"},{name: "Brometheus"}]
]
a.each do |element|
	# p element
	element.each do |inner_element|
		p inner_element[:name]
		# puts inner_element.to_s + " some cool shit"
	end
end
# user_input = gets
# puts user_input
# p user_input
# puts user_input.inspect
# print user_input.inspect


