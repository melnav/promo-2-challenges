require_relative "wagon_sort"


students =  []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just got, to the students array
  students << name if name !=""


end while name != ""
  nombre_total = students.length
  puts "voici les #{nombre_total} étudiants : #{wagon_sort(students)}"

# TstudentODO: Call `wagon_sort` method and display the sorted student list




