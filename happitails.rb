class Shelter

attr_accessor :name, :animals, :clients

	def initialize (name, animals=[], clients=[])
		@name = name
		@animals = animals
		@clients = clients
	end
end

shelter= Shelter.new("happitails")

class Animal

attr_accessor :name, :age, :gender, :species, :toys, :owner

  def initialize (name, age, gender, species, toys, owner=nil)
  	@name = name
  	@age = age
  	@gender = gender
  	@species = species
  	@toys = toys
  	@owner = owner
  end
end

def add_animal()
	puts "Please enter the animal's info"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "what kind of animal is it?"; species = gets.chomp
	print "how many toys does it have?"; toys = gets.chomp
	Animal.new(name, age, gender, species, toys)
  end


class Client
	attr_accessor :name, :num_children, :age, :pets

  def initialize (name, num_children, age, pets=[])
  	@name = name
  	@num_children = num_children
  	@age = age
  	@pets = pets
  end
 end

def add_client()
	puts "Please enter client info"
	print "name:"; name = gets.chomp
	print "no. of children:"; num_children = gets.chomp
	print "age:"; age = gets.chomp
	Client.new(name, num_children, age)
end


shelter.animals << add_animal()

shelter.clients << add_client()
