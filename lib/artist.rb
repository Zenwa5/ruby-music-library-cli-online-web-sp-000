class Artist

  attr_accessor :name, :song

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    music = self.new(name)
    music.save
    music
  end
end
