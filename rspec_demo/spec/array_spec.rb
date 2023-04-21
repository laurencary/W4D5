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

