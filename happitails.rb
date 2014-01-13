require './shelter'
require './animal'
require './client'
require 'pry'


shelter= Shelter.new("happitails") #new instance of Shelter

def menu message
	puts `clear`
	puts "*** AdoptPro v1.0 ***\n\n"

	puts "#{message}\n\n" unless message.empty?

	puts '1 : Add an animal'
	puts '2 : Add a client'
	puts '3 : Get animal list'
	puts '4 : Get client list'
	puts '5 : Adopt an animal'
	puts '6 : Put up an animal for adoption'
	puts "q : Quit\n\n"
	print '--> '
	gets.chomp
end

message = ""
choice = menu message
while choice !='q'
	message = ""
	case choice
	when "1"
	puts "Please enter the animal's info"
	print "name:"; name = gets.chomp
	print "age:"; age = gets.chomp
	print "gender:"; gender = gets.chomp
	print "what kind of animal is it?"; species = gets.chomp
	print "how many toys does it have?"; toys = gets.chomp

	shelter.animals << Animal.new(name, age, gender, species, toys) #instantiate a new Animal with arguments' values taken from chomp
	#and pushed into the @animals array of Shelter
	message = "Welcome to Happi Tails #{shelter.animals.last.name}" #the @name of the last item added to the @animals
	#array of shelter
	when "2"
	puts "Please enter client info"
	print "name:"; name = gets.chomp
	print "no. of children:"; children = gets.chomp
	print "age:"; age = gets.chomp
	
	shelter.clients << Client.new(name, children, age) #instantiate a new Client with arguments' values taken from chomp
	#and pushed into the @clients array of Shelter
	message = "Welcome to Happi Tails #{shelter.clients.last.name}!"
	when "3"
	message = "List of all animals"
	message = shelter.get_animal_list()
	when "4"
	message = "List of all clients"
	message = shelter.get_client_list()
    when "5" 
    puts "Which client would like to adopt an animal?"
    shelter.get_client_list.each do |client|
    	puts "#{client.name}"
    end
    print "name:"; requested_client = gets.chomp.downcase
    #set variable to the @name of the first value (a Client) of the new array of all 
    #items in @clients array whose @name equals the user input
    name_client_who_adopts = (shelter.clients.select { |client| client.name == requested_client}).first.name 
    #set variable to the first object(client) whose @name equals user input
    client_who_adopts = (shelter.clients.select { |client| client.name == requested_client}).first
    puts "Which animal would you like to adopt?"
	shelter.get_available_animals.each do |animal|
		puts "#{animal.name}"
    end
    print "name:"; requested_animal = gets.chomp.downcase
    #set variable to the first object (animal) of the new array of all 
    #items in @animals array whose @name equals user input 
    selected_animal = (shelter.animals.select { |animal| animal.name == requested_animal}).first
    #set variable to the @owner of animal object just returned
	selected_animal.owner = name_client_who_adopts
	#push that animals @name into the @pets array of the client object selected to adopt
	client_who_adopts.pets << requested_animal
	message = "#{name_client_who_adopts} just adopted #{selected_animal.name}!"
	when "6"
	puts "Which client would like to put an animal up for adoption?"
	#binding.pry
	shelter.clients_with_pets.each do |client| #for each client in the array of clients whose @pets has items
		
		puts "#{client.name}" #put their name on the screen
	end
	print "name:"; lonely_client = gets.chomp #whoever the user chooses will need to have their .pets array accessed
	client_who_disowns = (shelter.clients.select {|client| client.name == lonely_client}).first.name #from the clients array, select any items where 
	#the name matches what was entered by the user, take the first object's name and set it to client_who disowns.
	puts "Which animal do they want to give up?"
	client_who_disowns.pets.each do |name| #for each animal in the chosen client's .pet array, puts the name
		puts "#{name}"
	end
	print "name: "; orphan_animal = gets.chomp
	client.pets.delete_if { |name| name == orphan_animal} #deletes the animal from the client's @pets array
	message = "#{client_who_disowns} has given #{orphan_animal} up for adoption."

	else
	message += "I don't understand ..."
	end

choice = menu message

end













