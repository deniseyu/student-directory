@students = [] # an empty array accessible to all methods

def input_students
	puts "Enter the names of the students"
	puts "To finish, hit enter twice"
	# gets the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# add student hash to the array
		@students << {:name => name, :cohort => :november}
		puts "Now we have #{@students.length} students."
		# gets another name from the user
		name = gets.chomp
	end
end


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "----------------"
end


def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "Overall we have #{@students.length} great students"
end

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end 

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	else
		puts "I don't know what you mean, try again"
	end
end


#Nothing happens until we call the methods

interactive_menu



