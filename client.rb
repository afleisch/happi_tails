class Client
	attr_accessor :name, :children, :age, :pets

  def initialize (name, children, age, pets=[])
  	@name = name
  	@children = children
  	@age = age
  	@pets = pets
  end

  def to_s?
	  @name
  end

  def petless? #if you call .petless? the return value will be true if the client 
 	 #object's pets argument is set to an empty array, and false if contains items
   
   	@pets.empty?
  end

end

