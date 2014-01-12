require './shelter'
require './animal'
require './client'



shelter= Shelter.new("happitails")

def add_animal()
	puts "Please enter the animal's info"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "what kind of animal is it?"; species = gets.chomp
	print "how many toys does it have?"; toys = gets.chomp
	Animal.new(name, age, gender, species, toys)
  end

# shelter.animals << add_animal()

# p shelter.animals

def add_client()
	puts "Please enter client info"
	print "name:"; name = gets.chomp
	print "no. of children:"; num_children = gets.chomp
	print "age:"; age = gets.chomp
	Client.new(name, num_children, age)
end

shelter.animals << add_animal()

p shelter.animals


shelter.clients << add_client()

p shelter.clients


