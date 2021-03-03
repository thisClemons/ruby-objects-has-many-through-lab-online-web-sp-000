class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.collect {|song| song.genre == self}
  end

  def self.all
    @@all    
  end

  def artists
    songs.collect{|song| song.artist}.uniq    
  end


end
