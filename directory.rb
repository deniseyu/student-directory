@students = [] 

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


def input_students
	puts "Enter the names of the students"
	puts "To finish, hit enter twice"
	name = STDIN.gets.chomp
	while !name.empty? do 
		add_student(name, :november) #add student hash to the array
		puts "Now we have #{@students.length} students."
		name = STDIN.gets.chomp
	end
end


def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list"
	puts "4. Load the list from students.csv"
	puts "9. Exit"
end 

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def add_student(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

def try_load_students
	filename = ARGV.first # first argument from the command line
	return if filename.nil? # get out of the method if it isn't given
	if File.exists?(filename) # if it exists
		load_students(filename)
		puts "Loaded #{students.length} from #{filename}"
	else # if it doesn't exist
		puts "Sorry, #{filename} doesn't exist."
		exit # quits the program
	end
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students 
	when "4"
		load_students
	when "9"
		exit
	else
		puts "I don't know what you mean, try again"
	end
end

def interactive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end
end






#Nothing happens until we call the methods

try_load_students
interactive_menu



