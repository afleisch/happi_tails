class Shelter

attr_accessor :name, :animals, :clients

	def initialize (name, animals=[], clients=[])
		@name = name
		@animals = animals
		@clients = clients
	end

	def get_animal_list
		 return @animals 
	end

	def get_client_list
		return @clients
	end

	def get_available_animals #return an array of animals who have an empty array as the .owner argument
		@animals.select do |animal|
			animal.available?
		end
	end

	def get_adopted_animals #return an array of animals who do not have an empty array as the .owner argument
		return @animals.select do |animal|
		  not animal.available?
		end
	end

	def clients_with_pets
		return @clients.select do |client|  #in the array that is @clients, 
			not client.petless?#evaluate each object and return an array of clients 
			#who do not have an empty array as the .pets argument
		end
	end

end
