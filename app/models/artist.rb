class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end
  ## iterate through paintings to find the instance of "self" or whatever the suer is looking for

  def galleries
    Gallery.all.select {|gallery| gallery.painting == self}
  end

  def cities
    City.all.select {|city| city.artist == self}
  end

  def self.total_experience
    Artist.all.map {|artist| artist.total_experience}.sum
  end

  # def self.most_prolific
  #
  # end

  # def self.total_paintings_per_artist
  #   Artist.all.map {|artist| artist.painting}.sum
  # end

  def create_painting(title, price, gallery)
    Painting.new(self, title, price, gallery)
  end 


end
