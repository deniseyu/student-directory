# First we put the students into an array!
students = [
"Stephen Lloyd",
"Alex Peattie",
"Ruben Kostucki",
"Mihai Cojocar",
"Nicole Tredway",
"Yvette Cook",
"Ella Schofield", 
"Victoria Barr", 
"Bernard Mordan", 
"Elena Garrone",
"Stephen Giles",
"Ana Nogal",
"Craig Horsborough",
"Tim Scully",
"Camilla van Klinken",
"James Carter",
"Andrew Hercules",
"Karin Nielsen",
"Andrew Snead",
"Denise Yu",
"Rachel Nolan",
"Anna Schechter",
"Alex Fakhri",
"Andrew Harrison", 
"Walter White"
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

#Nothing happens until we call the methods

print_header
print(students)
print_footer(students)




