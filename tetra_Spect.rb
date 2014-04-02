#tetra_Spec.rb
require './tetra'

describe "#rotation" do
  it "Must rotate 90 right" do 
	before = [
	[0, 0, 1, 0],
	[0, 0, 1, 0],
	[0, 1, 1, 0],
	[0, 0, 0, 0]]
	after = [
	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 1, 1, 1],
	[0, 0, 0, 0]]
	rotationRight(before).should eq(after)
  end

  it "Must rotate 90 left" do
  end
end

describe "#canPossible" do
  it "True if a wall isn't hit" do
  end
  it "True if a block isn't hit" do
  end

end

describe "#downPossible" do
  it "True if the bottom isn't hit" do
  end
  it "True if a block isn't hit" do
  end
end


describe "#move" do
  it "Move left the block" do
  end
  it "Move right the block" do
  end
  it "block get down" do
  end
end

