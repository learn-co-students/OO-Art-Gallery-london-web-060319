class Painting

  attr_reader :title, :price, :gallery, :artist
  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price.to_f
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.sum {|paint| paint.price}
  end

end
