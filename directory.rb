
LINESIZE = 60

def print_header
	puts "The students of my cohort at Makers Academy".center(LINESIZE)
	puts "-------------".center(LINESIZE)
end

# ex.2 modify the program to print a number before the name of each student
# ex.8 ask for both the name and the cohort, add default value
def print(students)
	students.each_with_index do |student,index|
		puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts ; puts "Overall, we have #{names.length} great students".center(LINESIZE)
end

@ask = Proc.new {
  @name = gets.chomp
  if !@name.empty? 
    puts "cohort?"
    @cohort = gets.chomp
    @cohort = "December" if @cohort.empty?
  end
}

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  @ask.call

  while !@name.empty? do
  	students << {:name => @name, :cohort => @cohort.capitalize.to_sym}
  	puts "Now we have #{students.length} students"
    @ask.call
  end

  students
end

# def sort_cohort(students)
#   students
     # student.each.cohort.value.sort
# end
# ask how this is done with sort ..sort for hash ?!
# && how to do it with map ? (map() )  pls look over map again.

def print_cohort(students)
  # make list of cohorts
  cohorts = []
  students.each {|student| cohorts << student[:cohort]}
  cohorts.uniq!

    cohorts.each do |cohort| 
      puts "Students in the #{cohort} cohort :".center(LINESIZE)
      students.each { |student| puts student[:name] if student[:cohort] == cohort }
    end
end

students = input_students
print_header
print(students)
print_cohort(students)
print_footer(students)
