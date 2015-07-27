require "spec_helper"

RSpec.describe Die do

  let(:test_die) { vowels = Die.new(%w(jeeves A E Y C T L)) }

  describe ".new" do

    it "takes a name and face array as arguments" do
      expect(test_die).to be_a(Die)
    end
  end

  describe ".visible_face" do

    it "returns 'a' " do
      expect(test_die.visible_face).to eq "L"
    end
  end

  describe ".roll" do

    it "returns random value for face" do
      match = []
      base = ['A', 'E', 'Y', 'C', 'T', 'L']
      5000.times do
        match << (test_die.roll == base)
      end

      expect(match.any? { |item| item == false } ).to eq(true)
    end
  end

end
