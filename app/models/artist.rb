class Artist

  attr_reader :name, :years_experience
  @@all=[] 
  @@average=[]
  @@artists_experience=[] 

  def initialize(name:, years_experience:)
    @name = name
    @years_experience = years_experience.to_f
    @@all<<self 
  end

  def self.all
    @@all
  end 

  def self.average 
    @@average 
  end 

  def paintings
    Painting.all.select {|painting| painting.artist== self}
  end 

  def galleries
    paintings.map {|artist_painting| artist_painting.gallery}
  end 
  #Return an array of all cities that an artist has paintings in
  
  def cities 
    galleries.map{|gallery| gallery.city}
  end 

  def self.total_experience
    Artist.all.map {|artist| artist.years_experience}.inject(0, :+)
  end 

  #Returns an instance of the artist with the highest amount 
  #of paintings per year of experience.
  
  def prolific  
    (paintings.size.to_f)/(self.years_experience)
  end 

  def self.most_prolific
    Artist.all.max_by{|artist| artist.prolific }
  end 

  def highest_average
    @@average.max 
  end 
  
  def create_painting(title,price,gallery)
    Painting.new(title:title, price:price, artist:self, gallery:gallery)
  end 

end
