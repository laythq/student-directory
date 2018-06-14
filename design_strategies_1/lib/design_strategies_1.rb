

def track_name(name)
  @list = []
  @list.push(name)
  puts "Name stored!"
end

def show_names
 puts @list
end

track_name("Bibi")
show_names
#   show_names
#puts list
