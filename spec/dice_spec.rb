require "spec_helper"



RSpec.describe Dice do
  # let(:dixon) {Employee.new("Dixon Bainbridge", "Owner") }

  describe ".new" do

    game_view = Dice.new
    it "has an array of sixteen dice" do
      expect(game_view.collection.size).to eq(16)
    end
  end

  describe ".roll" do
    it "has an array sixteen dice not equal to constructor array" do

      initial = Dice.new
      test1 = Dice.new
      test1.roll
      test2 = Dice.new
      test2.roll
      expect(initial.collection == test1.collection).to eq(false)
      expect(test1.collection == test2.collection).to eq(false)
    end
  end
end
