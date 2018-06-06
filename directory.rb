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

def print_index_names_and_cohort(students)
  students.each_with_index {
    |(key, value), y|
    puts "#{y + 1}. #{key[:name]} (#{key[:cohort]} cohort)"}
end

def print_name_if_first_letter(students)
    students.each do |x|
      if x[:name].chars.first == "A"
        puts x[:name]
      end
    end
end


def print_footer(students)
  print "Overall we have #{students.count} great students"
end

students = input_students
print_header
print_names_and_cohort_3(students)
print_footer(students)
