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
	before = [
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 0],
        [0, 0, 0, 0]]
        after = [
        [0, 0, 0, 0],
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [0, 0, 0, 0]]
        rotationLeft(before).should eq(after)
  end
end

describe "#canPossible" do
  it "True if a wall isn't hit on the right" do
	game  = [
        [0, 0, 0, 0],
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [0, 0, 0, 0]]
        canRotateRight(game).should eq(true)
  end
  it "True if a wall isn't hit on the left" do
        game  = [
        [0, 0, 0, 0],
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [0, 0, 0, 0]]
        canRotateLeft(game).should eq(true)
  end

  it "True if a block isn't hit on the left" do
        game  = [
        [0, 0, 0, 0],
        [0, 1, 1, 1],
        [2, 2, 0, 1],
        [2, 2, 0, 0]]
        canRotateLeft(game).should eq(true)
  end

  it "True if a block isn't hit on the right" do
        game  = [
        [0, 0, 0, 0],
        [2, 1, 1, 1],
        [2, 0, 0, 1],
        [2, 2, 0, 0]]
        canRotateRight(game).should eq(true)
  end

end

describe "#downPossible" do
  it "True if the bottom isn't hit" do
        game  = [
        [0, 0, 0, 0],
        [0, 1, 1, 1],
        [0, 0, 0, 1],
        [0, 0, 0, 0]]
        canGetDown(game).should eq(true)
  end
  it "True if a block isn't hit" do
         game  = [
        [0, 0, 0, 0],
        [2, 1, 1, 1],
        [2, 0, 0, 1],
        [2, 2, 0, 0]]
        canGetDown(game).should eq(true)

  end
end


describe "#move" do
  it "Move right the block" do
      before = [
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 0],
        [0, 0, 0, 0]]
        after = [
        [0, 0, 0, 1],
        [0, 0, 0, 1],
        [0, 0, 1, 1],
        [0, 0, 0, 0]]
        moveRight(before).should eq(after)

  end
  it "Move left the block" do
      before = [
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 0],
        [0, 0, 0, 0]] 
        after = [
        [0, 1, 0, 0],
        [0, 1, 0, 0],
        [1, 1, 0, 0],
        [0, 0, 0, 0]]
        moveLeft(before).should eq(after)

 end
  it "block get down" do
 
      before = [
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 0],
        [0, 0, 0, 0]] 
        after = [
        [0, 0, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 1, 0],
        [0, 1, 1, 0]]
        moveDown(before).should eq(after)

  end
end

