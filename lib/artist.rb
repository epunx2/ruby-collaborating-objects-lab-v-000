## This File will define the Artist class
require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|obj| obj.name == name }
      artist = @@all.select {|obj| obj.name == name }
    else
      artist = Artist.new(name)
    end
    self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
