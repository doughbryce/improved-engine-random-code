module Analyzer

  def self.sum(nums)
    total = 0
    nums.each do |num|
      total += num
    end
    total
  end

  def self.average(nums)
    all = 0
    nums.each do |num|
      all += num
    end
    all / nums.length.to_f
  end

  def self.range(nums)
    nums.sort!
    nums[-1] - nums[0]
  end

end