require 'recursion'
require 'rspec'

describe "#sum_to" do
  it "return base case when n = 1" do
    expect(sum_to(1)).to eq(1)
  end

  it "sum numbers greater than 1" do
    expect(sum_to(5)).to eq(15)
  end
end

describe "#add_numbers" do
  it "return the number when array only has one element" do
    expect(add_numbers([3])).to eq(3)
  end

  it "add numbers when array has more than one element" do
    expect(add_numbers([1, 2, 3, 4])).to eq(10)
  end

  it "return nil is array is empty" do
    expect(add_numbers([])).to eq(nil)
  end
end

describe "#gamma_fnc" do
  it "return nil if n = 0" do
    expect(gamma_fnc(0)).to eq(nil)
  end
  it "return 1 if n = 1" do
    expect(gamma_fnc(1)).to eq(1)
  end
  it "return the factorial of (n-1)!" do
    expect(gamma_fnc(4)).to eq(6)
  end
  it "return the factorial of a larger number" do
    expect(gamma_fnc(8)).to eq(5040)
  end
end

describe "#ice_cream_shop" do

  it "return false if the ice cream flavor is not found" do
    expect(ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')).to eq(false)
  end

  it "return true if the ice cream flavor is found" do
     expect(ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')).to eq(true)
  end

  it "return false when testing with a longer array" do
    expect(ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')).to eq(false)
  end

  it "return true if only one ice cream flavor is the favorite" do
    expect(ice_cream_shop(['moose tracks'], 'moose tracks')).to eq(true)
  end

  it "return false if the ice cream flavor array is empty" do
    expect(ice_cream_shop([], 'honey lavender') ).to eq(false)
  end
end

describe "#reverse" do
  it "reverse an empty string" do
    expect(reverse("")).to eq("")
  end

  it "reverse string of one letter" do
    expect(reverse("q")).to eq("q")
  end

  it "reverse 2 letters" do
    expect(reverse("dl")).to eq("ld")
  end

  it "reverse a longer string" do
    expect(reverse("house")).to eq ("esuoh")
  end
end
