require './shelter'
require './animal'
require './client'



shelter= Shelter.new("happitails")

p shelter

frank = Animal.new("frank", 2, "male", "dog", 3)

p frank

mary = Client.new("mary", 2, 34)

p mary



