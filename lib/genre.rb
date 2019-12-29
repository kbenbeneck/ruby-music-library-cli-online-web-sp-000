class Genre
  extend Concerns::Findable
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
<<<<<<< HEAD
=======
    save
>>>>>>> 258f9b67ff0282f4738dc4c1046a6bc748cd2662
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    all.clear
  end

  def self.create(name)
    genre = new(name)
    genre.save
    genre
  end

  def songs
    @songs
  end

  def artists
    songs.collect{ |s| s.artist }.uniq
  end

<<<<<<< HEAD
=======
#end
>>>>>>> 258f9b67ff0282f4738dc4c1046a6bc748cd2662
end
