class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
  # Returns an array of all the artists
    @@all
  end

  def create_painting(title, price, gallery)
    # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    Painting.new(title, price, self, gallery)
  end

  def paintings
  # Returns an array all the paintings by an artist
    Painting.all.select{|p| p.artist == self}
  end

  def galleries
  # Returns an array of all the galleries that an artist has paintings in
    Painting.all.collect{|p| p.gallery if p.artist == self}
  end

  def cities
    # Return an array of all cities that an artist has paintings in
    galleries.collect{|g| g.city}
  end

  def self.total_experience
    # Returns an integer that is the total years of experience of all artists
    @@all.sum(&:years_experience)
  end

  def self.most_prolific
    # Returns an instance of the artist with the highest amount of paintings per year of experience.
    @@all.max_by {|a| (a.paintings.length / a.years_experience).to_f}    
  end


end
