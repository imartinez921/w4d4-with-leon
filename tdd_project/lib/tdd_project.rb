
class Array

  def my_uniq
    self.uniq
  end

  def two_sum
    collection = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        next if j == self.length
        collection << [i,j] if self[i] + self[j] == 0
      end
    end
    return collection
  end

  def my_transpose
    a = Array.new(self[0].length){Array.new(self.length)}

    a.each.with_index do |subarray, fixed_idx|
      subarray.each.with_index do |ele, moved_idx|
        a[fixed_idx][moved_idx]=self[moved_idx][fixed_idx]
      end
    end
    return a

    # (0...self.length).map do |i|
    #   (0...self.length).map do |j|
    #     self[j][i]
    #   end
    # end
  end

  # def stock_picker(array)

  # end

  
end


def stock_picker(array) #[1,2,3,4,5]
  buy= array.index(array.min)
  sell= array.index(array.max)

  [buy,sell]
end


p stock_picker([1232,54564,786568,76446,64475,86643,8907545])