require "rspec"
require "cd"
require "cd_library"

describe Cd_library do
  it "should initialize a Library" do
    test_library = Cd_library.new()
    test_library.should be_an_instance_of Cd_library
  end

  describe '.add_cd' do
    it "should initialize a new cd with band and album and add to library" do
      library = Cd_library.new()
      cd = library.add_cd('The Monkees', 'whatever')
      cds = library.cds
      cds[0].should eq cd
    end
  end

end

describe Cd do
  it "should initialize a new cd with band and album" do
    test_cd = Cd.new("Nsync", "Crackers")
    test_cd.should be_an_instance_of Cd
  end

  # describe 'create' do
  #   it 'should create a new cd' do
  #     test_cd = Cd.create("Nsync", "Crackers")
  #     test_cd.band
  #   end
  # end
end
