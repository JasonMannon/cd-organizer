class Cd_library

  def initialize()
    @cds = []
  end

  def all
    @cds
  end

  def add_cd(band, album)
    cd = Cd.create(band, album)
    @cds << cd
    cd
  end

  def Cd_library.all
    @@all
  end

  def search_artist(artist)
    matches = []
    #@cds.fetch(cd)
    @cds.each_with_index do |cd, index|
      if cd.artist == artist
        matches << @cds[index]
      end
    end
    matches
  end
end
