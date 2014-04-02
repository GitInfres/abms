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

describe "#generate" do
  it "Generate tetra bar" do
        after  = [
        [0, 1, 0, 0],
        [0, 1, 0, 0],
        [0, 1, 0, 0],
        [0, 1, 0, 0]]
        createTetraBar.should eq(after)
  end
  it "Generate tetra square" do
      after  = [
      [0, 0, 0, 0],
      [0, 1, 1, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0]]
      createTetraSquare.should eq(after)
  end
  it "Generate tetra L" do
      after  = [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0]]
      createTetraL.should eq(after)
  end
  it "Generate tetra L" do
      after  = [
      [0, 1, 0, 0],
      [0, 1, 0, 0],
      [0, 1, 1, 0],
      [0, 0, 0, 0]]
      createTetraL.should eq(after)
  end
end
