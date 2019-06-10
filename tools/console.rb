require_relative '../config/environment.rb'

a1 = Artist.new("Millais", 41)
a2 = Artist.new("Waterhouse", 68)
a3 = Artist.new("Hirst", 54)


g1 = Gallery.new("Tate Britain", "London")
g2 = Gallery.new("MOMA", "New York")
g3 = Gallery.new("MACBA", "Barcelona")

p1 = Painting.new("Opheia", 50000, a1, g1)
p2 = Painting.new("Lady of Shalott", 60000, a2, g1)
p3 = Painting.new("Untitled", 10000000, a3, g3)
p4 = Painting.new("Spot 1", 10000000, a3, g3)
p5 = Painting.new("Spot 2", 10000000, a3, g3)
p6 = Painting.new("Untitled 2", 10000000, a3, g3)
p7 = Painting.new("Death", 10000000, a3, g3)


binding.pry

puts "Bob Ross rules."
