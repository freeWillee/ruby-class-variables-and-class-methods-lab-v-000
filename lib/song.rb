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
    distinct_genre_list = []
    @@genres.each do |genre|
      #binding.pry
      if @@genres.none?{|genre| genre}
        distinct_genre_list << genre
      #  binding.pry
      end
    end

    return distinct_genre_list
  end

  #returns the number of distinct genres in class
  def self.artists
    @@artists.uniq
  end

  def self.genre_count

  end







end
