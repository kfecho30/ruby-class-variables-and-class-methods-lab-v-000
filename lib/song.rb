class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    #if !@@artists.include? artist
      @@artists << artist
  #  end
  #  if !@@genres.include? genre
      @@genres << genre
  #  end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    unique = []
    @@genres
    genres.each do |genre|
      if !unique.include? genre
        unique << genre
      end
    end
  end
end
