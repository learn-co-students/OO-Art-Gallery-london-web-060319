class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    Gallery.all.select {|gallery| gallery.artist == self}
  end

  def artist_names
    Painting.all.map {|painting| painting.artist if painting.gallery == self}
  end

  def most_expensive_painting
    paintings.map {|painting| painting.price}.max
  end

end
