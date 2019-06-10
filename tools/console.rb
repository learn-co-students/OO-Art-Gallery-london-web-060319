require_relative '../config/environment.rb'


artist1= Artist.new(name:"Billy", years_experience:10.0)
artist2= Artist.new(name:"Danielle", years_experience:20.0)
artist3= Artist.new(name:"Ben", years_experience:50.0)

gallery1=Gallery.new(name:"Colors", city:"New York")
gallery2=Gallery.new(name:"Happytimes", city:"London")
gallery3=Gallery.new(name:"Artists Place", city:"Paris")

painting1=Painting.new(title:"rainbow", price:10000.0, artist: artist1, gallery: gallery1) 
painting2=Painting.new(title: "shoes", price: 30.0, artist: artist2, gallery:gallery2)
painting3=Painting.new(title: "people", price: 2000.0, artist: artist3, gallery:gallery3)
painting4=Painting.new(title: "smiles", price: 500000.0, artist: artist2, gallery:gallery3)
 

binding.pry
0 
puts "Bob Ross rules."
