# 41. First Missing Positive
# 157 / 157 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
    ((1..(nums.size + 1)).to_a - nums)[0]
end