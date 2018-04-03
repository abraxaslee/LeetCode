# 27. Remove Element
# 113 / 113 test cases passed.
# Status: Accepted
# Runtime: 40 ms
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.reject! {|n| n == val}
    return nums.length
end
