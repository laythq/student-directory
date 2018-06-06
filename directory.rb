

students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end


def print_names(students)
  students.each do |x|
    puts x
  end
end

def print_footer(students)
  print "Overall we have #{students.count} great students"
end

print_header
print_names(students)
print_footer(students)
