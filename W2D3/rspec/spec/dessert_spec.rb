require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new("cookies", 5, chef) }
  let(:chef) { double("chef") }
  let(:ingredients) { ["sugar", "butter", "milk", "eggs", "flour"] }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cookies")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("cookies", "string", chef ) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before do
      dessert.add_ingredient(ingredients.first)
    end

    it "adds an ingredient to the ingredients array" do
      expect( dessert.ingredients.first ).to eq(ingredients.first)
    end
  end

  describe "#mix!" do
    before do
      ingredients.each do |el|
        dessert.add_ingredient(el)
      end
      dessert.mix!
    end
    it "shuffles the ingredient array" do
      expect( dessert.ingredients ).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end