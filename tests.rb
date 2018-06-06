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

def print_names_and_cohort(students)
  students.each do |x|
    puts "#{x[:name]} (#{x[:cohort]} cohort)"
  end
end

def index(students)
  students.each_with_index { |(key, value), y| puts y}

end

def print_names_and_cohort_2(students)
  students.each_with_index {
    |(key, value), y|
    puts "#{y + 1}. #{key[:name]} (#{key[:cohort]} cohort)"}

end


students = input_students
print_names_and_cohort_2(students)
