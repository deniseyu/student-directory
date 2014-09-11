

def input_students
	puts "Enter the names of the students"
	# create an empty array
	students = []
	# gets the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# add student hash to the array
		students << {:name => name, :cohort => :november}
		puts "Now we have #{students.length} students."
		# gets another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end


def print(students)
	students.to_enum.with_index(1).each do |student, i|
		puts "#{i}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end


def interactive_menu
	students = []
	loop do
	# 1. print the menu and ask the user what to do
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
	# 2. read the input and save it into a variable
	selection = gets.chomp
	# 3. do what the user has just asked
	case selection
		when "1"
			students = input_students
		when "2"
			print_header
			print(students)
			print_footer(students)
		when "9"
			exit 
		else
			puts "I don't know what you mean, try again"
		end
	end
end


#Nothing happens until we call the methods

interactive_menu



