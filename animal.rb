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

  def to_s
    @name
  end

  def available? #the value that is returened when calling available? is true if the animal object has the owner argument set to nil, 
   	#and false if it has a value
   	@owner.nil?
  end	

end
