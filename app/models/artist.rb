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

  def galleries
    paintings.map {|paint| paint.gallery}
  end

  def cities
    paintings.map {|paint| paint.gallery.city}
  end

  def self.total_experience
    Artist.all.map {|artist| artist.years_experience}.sum
  end

  def prolific
    paintings.count.to_f / self.years_experience
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.prolific}.name
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
