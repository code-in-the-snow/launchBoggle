require "spec_helper"

RSpec.describe Die do

  let(:vowels) { vowels = Die.new("vowels", %w(A E I O U)) }

  describe ".new" do

    it "takes a name and face array as arguments" do
      expect(vowels).to be_a(Die)
    end
  end

  describe ".visible_face" do

    it "returns 'a' " do
      expect(vowels.visible_face).to eq "U"
    end
  end

  describe ".roll" do

    it "returns random value for face" do
      match = []
      base = ['A', 'E', 'I', 'O', 'U']
      5000.times do
        match << (vowels.roll == base)
      end

      expect(match.any? { |item| item == false } ).to eq(true)
    end
  end

end
