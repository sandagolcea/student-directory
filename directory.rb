
# make the list/array of students
# students = [ 
# 	{:name => "Dr. Hannibal Lecter", :cohort => :december},
# 	{:name => "Darth Vader", :cohort => :december},
# 	{:name => "Nurse Ratched", :cohort => :december},
# 	{:name => "Michael Corleone", :cohort => :december},
# 	{:name => "Alex De Large", :cohort => :december},
# 	{:name => "The Alien", :cohort => :december},
# 	{:name => "Terminator", :cohort => :december},
# 	{:name => "Freddy Kruger", :cohort => :december},
# 	{:name => "The Joker", :cohort => :december}
# ]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

# ex.2 modify the program to print a number before the name of each student
def print(students)
	students.each_with_index do |student,index|
		puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

# ex.3 only print the students whose name begins with a letter "A"
def print_alfa(students)
	puts "\nStudents whose name begins with A are:"
	students.each_with_index do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].split(//).first.upcase == "A"
	end
end

# ex. 4 only print the students whose name is shorter than 12 characters
def print_12(students)
	puts "\nStudents whose name has more than 12 chars are:"
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
	end
end

# ex.5 Rewrite the each() method that prints all students using "while" or "until"
def print_while(students)
  index = 0
  while index < students.size
    puts "#{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end
end

def print_for(students)
  for student in students
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def print_footer(names)
	puts "\nOverall, we have #{names.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp

  while !name.empty? do
  	students << {:name => name, :cohort => :december}
  	puts "Now we have #{students.length} students"
  	name = gets.chomp
  end

  students
end

students = input_students
print_header
print(students)
# print_alfa(students)
# print_12(students)
# print_while(students)
print_footer(students)
