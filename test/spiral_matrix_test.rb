require "../app/spiral_matrix.rb"

describe SpiralMatrix do

	before(:all) do
		@spiral_matrix = SpiralMatrix.new
	end

	it "when pass nil for columns and lines should return []" do
		@spiral_matrix.spiral(nil, nil).should == []
	end

	it "when pass 0 or less for columns and lines should return []" do
		@spiral_matrix.spiral(0, -2).should == []
	end

	it "when pass 1, 1 should return [[1]]" do
		@spiral_matrix.spiral(1, 1).should == [[1]]
	end

	it "when pass 5, 1 should return [[1, 2, 3, 4, 5]]" do
		@spiral_matrix.spiral(5, 1).should == [[1, 2, 3, 4, 5]]
	end

	it "when pass 3, 4 should return [[1, 2, 3], [10, 11, 4], [9, 12, 5], [8, 7, 6]]" do
		@spiral_matrix.spiral(3, 4).should == [[1, 2, 3], [10, 11, 4], [9, 12, 5], [8, 7, 6]]
	end
end