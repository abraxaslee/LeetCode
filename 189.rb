# 189. Rotate Array
# 33 / 33 test cases passed.
# Status: Accepted
# Runtime: 79 ms

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
      k.times { |_| nums.unshift(nums.pop) }
end