class Array
  def my_uniq
    result = []
    self.each { |el| result << el unless result.include?(el) }
    result
  end
  
  def two_sum
    pos = []
    self.each_index do |idx|
      next if idx == self.length - 1
      (idx + 1...self.length).each do |idx2|
        pos << [idx, idx2] if self[idx] + self[idx2] == 0
      end 
    end 
    pos
  end
  
  def my_transpose
    result = []
    self.count.times { result << [] }
    self.each_with_index do |row, idx|
      row.each_index do |col|
        result[idx][col] = self[col][idx]
      end
    end
    result
  end
  
  def stock_picker
    # self.each do |buy|
    #   self.each do |sell|
    # 
    #   end
    # end
    
    sell = self.max 
    sell_idx = self.index(sell)
    buy = self.take(sell_idx).min 
    [buy, sell]
  end
  
end

  