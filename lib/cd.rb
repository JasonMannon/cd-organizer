class Cd
  def initialize(artist, album)
    @artist = artist
    @album = album
  end

  def Cd.create(artist, album)
    cd = Cd.new(artist, album)
    cd
  end

  def artist
    @artist
  end

  def album
    @album
  end
end
