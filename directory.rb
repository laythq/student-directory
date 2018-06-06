def input_students
  puts "Please enter the name of a students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


def print_names_and_cohort(students)
  students.each do |x|
    puts "#{x[:name]} (#{x[:cohort]} cohort)"
  end
end

def print_footer(students)
  print "Overall we have #{students.count} great students"
end

students = input_students
print_header
print_names_and_cohort(students)
print_footer(students)
