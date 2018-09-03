require 'lru_cache'

RSpec.describe "LRUCache" do
  subject(:lrucache) { LRUCache.new(4) }

  describe "#initialize" do
    it "takes " do
      expect(lrucache.show).to eq(nil)
    end
    it "takes " do
      expect(lrucache.show).to receive(:p)
    end

  end

  describe "#count" do
    it "counts the size of the store"
  end

  describe "#add" do
    it "adds to the store"

    it "it deletes the element at the store and puts it at the end if the element already exists"

    it "removes the first element and adds to the end if the array is full"
  end

  describe "#show" do

    it "returns the array"
  end

end
