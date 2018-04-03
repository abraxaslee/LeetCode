# 26. Remove Duplicates from Sorted Array
# 161 / 161 test cases passed.
# Status: Accepted
# Runtime: 56 ms
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    nums.uniq!
    nums.length
end