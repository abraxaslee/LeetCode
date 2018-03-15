# 268. Missing Number
# 122 / 122 test cases passed.
# Status: Accepted
# Runtime: 60 ms

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    return 0 if nums.empty?
    nums.length*(nums.length+1)/2 - nums.reduce(&:+)
end