require_relative '../config/environment.rb'

a1 = Artist.new("Bob Ross", 20)
a2 = Artist.new("Picasso", 30)
a3 = Artist.new("Matisse", 10)

g1 = Gallery.new("Louvre", "Paris")
g2 = Gallery.new("Tate", "London")



a1.create_painting("the blob", 5000, g1)

binding.pry

puts "Bob Ross rules."
