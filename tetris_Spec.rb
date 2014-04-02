#tetris_Spec.rb
require './tetris'

describe Tetra, "#rotationDroite" do
  it "Doit retourner de 90 droite" do 
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
	rotationDroite(before, 90).should eq(after)
  end
end

describe Tetra, "#descendre" do
	it "Doit descendre" do
	end
end

describe Tetra, "#rotationGauche" do
  it "Doit retourner de 90 gauche" do
  end
end

describe Tetra, "#rotationPossible" do
  it "Vrai si la piece peut etre tourne" do
  end
end

describe Tetra, "#descentePossible" do
  it "Vrai si la piece peut descendre" do
  end
end


describe Tetra, "#decaler" do
  it "Doit decaler la piece" do
  end
end

