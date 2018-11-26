class Person
  attr_accessor :age, :name
  def initialize(name, age)
    @name = name
    @age = age
  end
  def birthday
    @age += 1
  end
end

all_the_people = []
completion = false

puts "Enter personnel data. Type 'done' when finished."

while completion == false
  print "Name: "
  name = gets.chomp
  if name.downcase == "done"
    completion = true
    break
  end
  print "Age: "
  age = gets.chomp
  profile = Person.new(name, age)
  all_the_people.push(profile)
  puts "Profile saved"
end
puts "Personnel entry complete!"

all_the_people.each do |thing|
  puts thing
end
