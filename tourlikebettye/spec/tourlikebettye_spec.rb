RSpec.describe Tourlikebettye do
  it "has a version number" do
    expect(Tourlikebettye::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end

  it "has a cli.rd in its lib folder" do
    expect(Bettytourslist::BettyeTours(cli.rd)).to eql? true
  end
end
