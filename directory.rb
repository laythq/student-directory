@students = []

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

def load_students(filename = "./.gitignore/students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
      @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
end

def input_students
  puts "Please enter the name of a students"
  puts "To finish, just hit return twice"

  name = STDIN.gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
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

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
    when "1"
      students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
end

def show_students
  print_header
  print_names_and_cohort(@students)
  print_footer(@students)
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
    end
end

def save_students
  file = File.open("./.gitignore/students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

try_load_students

interactive_menu
