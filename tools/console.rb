require_relative '../config/environment.rb'

le = Artist.new("Le H", 10)
annie = Artist.new("Anniemaria", 6)
aruna = Artist.new("Aruna", 18)

vatican = Gallery.new("Vaticanos", "Italy")
france = Gallery.new("Paris Art Gallery", "France")
poland = Gallery.new("Zonk Art", "Poland")

p1_picasso = Painting.new("Beauty", 2000, le, poland)
p2_amazon = Painting.new("Amazonia", 1200, le, france)
p3_himalaya = Painting.new("Himalaya", 3000, annie, france)


binding.pry

puts "Bob Ross rules."
