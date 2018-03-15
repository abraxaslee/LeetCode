# 485. Max Consecutive Ones
# 41 / 41 test cases passed.
# Status: Accepted
# Runtime: 209 ms

# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
   longest = nums.join('').split('0').max
    return 0 if longest.nil?
    return longest.length
end