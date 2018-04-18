# 35. Search Insert Position
# 62 / 62 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    result = (0...nums.size).bsearch { |n| nums[n] >= target }
    return nums.length unless result
    return result
end