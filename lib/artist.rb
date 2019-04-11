require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist)
<<<<<<< HEAD
    artist_check = self.all.find {|x| x.name == artist}
    artist_check ? artist_check : Artist.new(artist).save.last
=======
    check = nil
    self.all.collect do |x|
    #  binding.pry
      if x.name == artist
        check = artist
        x
      end
    end
  #  binding.pry
    if check = nil
      new_artist = Artist.new(artist)
      new_artist
    end
>>>>>>> a6261555ccd8e9729dcfc5964c5d79dc89472623
  end

end
