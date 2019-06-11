class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << []
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist = self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    years = all.map{|artist| artist.years_experience}
    years.inject(0, :+)
  end

def prolific
  (paintings.count.to_f / self.years_experience)
end

def self.most_prolific
  Artist.all.max_by{|artist| artist.prolific }
end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
