#tetris_Spec.rb
require './tetris'

describe "#rotation" do
  it "Doit retourner de 90degrés à droite" do 
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
	

    
    puts rotate90(before).eql?(after)
  end
end
