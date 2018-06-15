require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  #returns number of songs in class
  def self.count
    @@count
  end

  #returns the number of distinct genres in class
  def self.genres
    @@genres.uniq
  end

  #returns the number of distinct genres in class
  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count_hash = {}
    # genre_count = 0

    @@genres.each do |genre|
      binding.pry
      # if genre_count_hash.any?{|key, value| key == genre}
      #   genre_count_hash[key] = value + 1
      # else
      
        if genre_count_hash[genre] == nil
          genre_count_hash[genre] = 1
        else
          genre_count_hash[genre] += 1
      # end
      binding.pry
    end

    return genre_count_hash
  end

end
