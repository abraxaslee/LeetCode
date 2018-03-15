# 506. Relative Ranks
# 17 / 17 test cases passed.
# Status: Accepted
# Runtime: 209 ms

# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
    rank = ["Gold Medal", "Silver Medal", "Bronze Medal"]
    sorted_rank = nums.map.with_index.sort.reverse
    sorted_rank.each_with_index do |r, i|
      if i < 3
        nums[r.last] = rank[i] 
      else
        nums[r.last] = (i+1).to_s
      end
    end
    nums
end