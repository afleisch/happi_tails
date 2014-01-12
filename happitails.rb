require './shelter'
require './animal'
require './client'



shelter= Shelter.new("happitails")

frank = Animal.new("frank", 2, "male", "dog", 3)

shelter.animals << frank

p shelter.animals

mary = Client.new("mary", 2, 34)

shelter.clients << mary

p shelter.clients



