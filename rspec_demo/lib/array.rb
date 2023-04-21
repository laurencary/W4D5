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