require_relative '../config/environment.rb'

artist1 = Artist.new("Picasso", 10)
artist2 = Artist.new("Leonardo da Vinci", 25)
artist3 = Artist.new("Le H", 35)

gallery1 = Gallery.new("Moma", "New York")
gallery2 = Gallery.new("National Gallery", "Dublin")

painting1 = Painting.new("Popa", 2, artist1,  gallery1)
painting2 = Painting.new("Lola", 56, artist2, gallery2)
painting3 = Painting.new("Harry", 63, artist1, gallery2)





binding.pry

puts "Bob Ross rules."
