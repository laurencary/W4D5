

def uniq(array)
    results = []
    array.each do |ele|
        if !results.include?(ele)
            results << ele
        end
    end

    results
end

def two_sum(array)
    pairs = []

    array.each_with_index do |ele, i|
        array.each_with_index do |ele2, j|
            if ele2 == -ele && j > i
                pairs << [i,j]
            end
        end
    end
    pairs

end

def my_transpose(array)
    results = []
    (0...array.length).each do |row|
        new_row = [] 
        (0...array.length).each do |col|
            new_row << array[col][row]
        end 
        results << new_row 
    end 
    results 
end

def stock_picker(prices)
    max_difference = 0 
    pairs = []
    (0...prices.length-1).each do |i|
        if prices[i+1] - prices[i] > max_difference
            max_difference = prices[i+1] - prices[i]
            pairs = [i,i+1]
        end 
    end 
    pairs 

end 

# stock_picker([1,3,4,0,6,8,3])