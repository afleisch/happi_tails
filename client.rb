class Client
	attr_accessor :name, :num_children, :age, :pets

  def initialize (name, num_children, age, pets=[])
  	@name = name
  	@num_children = num_children
  	@age = age
  	@pets = pets
  end
 end