require "array"

describe "uniq" do
    let(:array) { [1, 2, 1, 3, 3] }
    let(:unique) { [1, 2, 3] }

    it "removes duplicates" do
        expect(uniq(array)).to eq(unique)
    end
end

describe "two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    let(:result) { [[0, 4], [2, 3]] }

    it "find pairs whose sum equals 0" do
        expect(two_sum(array)).to eq(result)
    end
end

describe "my_transpose" do 
    let(:array1) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]}
    let(:result1) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]}
    let(:array2) {[
        [0,1], 
        [2,3]
      ]}
    let(:result2) {[
        [0,2],
        [1,3]
    ]}

    it "will transpose a 3x3 array" do 
        expect(my_transpose(array1)).to eq(result1)
    end 

    it "will transpose a 2x2 array" do 
        expect(my_transpose(array2)).to eq(result2)
    end 

end 

# [1,3,4,0,6,8,3]
describe "stock_picker" do 
    let(:prices) {[1,3,4,0,6,8,3]}

    it "returns array with 2 numbers" do 
        expect(stock_picker(prices).is_a?(Array)).to be true
        expect(stock_picker(prices).length).to eq(2)
    end 

    it "returns a pair of indicies with the greatest difference" do 
        expect(stock_picker(prices)).to eq([3,4])
    end 

end 