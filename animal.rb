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