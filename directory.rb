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

#Nothing happens until we call the methods


students = input_students
print_header
print(students)
print_footer(students)




