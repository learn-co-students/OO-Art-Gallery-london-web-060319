require_relative '../config/environment.rb'

#gallery
uber = Gallery.new("Uber", "NY")
twitter = Gallery.new("Twitter", "San Francisco")
airbnb = Gallery.new("AirBnb", "London")

#artist
bill = Artist.new("Bill", 30)
warren = Artist.new("Warren", 9)
jeff = Artist.new("Jeff", 15)

#painting
flowers = Painting.new("Flowers", 4000, uber, bill)
cars = Painting.new("Cars", 700, twitter, bill)
butterflies = Painting.new("Butterflies", 10, airbnb, bill)
waterlillies = Painting.new("Waterlillies", 3000, twitter, warren)
balloons = Painting.new("Balloons", 20000, uber, warren)
nudes = Painting.new("Nudes", 10000, airbnb, warren)
city_life = Painting.new("City Life", 100, airbnb, jeff)
selfie = Painting.new("Self Portrait", 9900, uber, jeff)
ruby = Painting.new("Ruby", 300, twitter, jeff)


binding.pry

puts "Bob Ross rules."
