class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery 

  @@all = []

  def initialize(title:, price:, artist:, gallery:)
    @title = title
    @price = price.to_f 
    @artist = artist 
    @gallery = gallery 
    @@all<<self 
  end

  def self.all
    @@all 
  end 

  def self.total_price
    total_price = @@all.map {|painting| painting.price}
    total_price.inject(0, :+)
  end 


end
