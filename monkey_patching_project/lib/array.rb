# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0
            return nil
        else
            self.max - self.min
        end
    end

    def average
        if self.length == 0
            return nil
        else
            self.sum.to_f / self.length
        end
    end

    def median
        self.sort!
        if self.length == 0
            return nil
        elsif self.length.odd?
            return self[self.length/2]
        else 
            return (self[self.length/2] + self[self.length/2-1])/2.0
        end
    end

    def counts
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(val)
        count = 0
        self.each do |ele|
            if val == ele
                count+=1
            end
        end
        count
    end
    
    def my_index(val)

        self.each_with_index do |ele,idx|
            if ele == val
                return idx
            end
        end
        nil

    end

    def my_uniq
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        new_arr
    end

    def my_transpose
        transposed = Array.new(self.length) {Array.new(self[0].length, nil)}
        self.each_with_index do |subarray,idx1|
            subarray.each_with_index do |ele,idx2|
                transposed[idx2][idx1] = ele
            end
        end
        transposed
    end
end
