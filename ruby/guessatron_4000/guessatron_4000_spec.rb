require_relative 'guessatron_4000'

describe Guessatron_4000 do
  let(:game) { Guessatron_4000.new }

  it "reveals letter if user inputs letter in phrase" do
    expect(game.check_word("q")).to eq "q____"
  end

  it "returns unaltered phrase if user inputs letter not in phrase" do
    expect(game.check_word("w")).to eq "_____"
  end

  # it "returns a congratulatory method if user wins" do
  #   expect(game.method_name(2,3)).to
  # end

  # it "returns a taunting method if user loses" do
  #   expect(game.method_name(2,3)).to
  # end

end