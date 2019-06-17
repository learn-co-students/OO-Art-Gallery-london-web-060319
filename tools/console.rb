require_relative '../config/environment.rb'


a = Artist.new("Bob", 7)
a1 = Artist.new("Vince", 8)

g = Gallery.new("Galart", "London")
g1 = Gallery.new("Sells", "NY")

p = Painting.new("Sky", 500, a, g)
p1 = Painting.new("Fire", 300, a, g)
p2 = Painting.new("Ether", 1000, a, g)
p3 = a.create_painting("MAMBO", 9000, g)

pp = Painting.new("Earth", 550, a1, g1)
pp1 = Painting.new("Air", 4500, a1, g1)


binding.pry

puts "Bob Ross rules."
