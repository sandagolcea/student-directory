
# make the list/array of students
students = [ 
	"Dr. Hannibal Lecter",
	"Darth Vader",
	"Nurse Ratched",
	"Michael Corleone",
	"Alex De Large",
	"The Alien",
	"Terminator",
	"Freddy Kruger",
	"The Joker" 
]
# print each student
puts "The students of my cohort at Makers Academy"
puts "-------------"
students.each do |student|
	puts student
end
# we print the total
puts "Overall, we have #{students.length} great students"
