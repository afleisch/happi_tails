class Shelter

attr_accessor :name, :animals, :clients

	def initialize (name, animals=[], clients=[])
		@name = name
		@animals = animals
		@clients = clients
	end
end