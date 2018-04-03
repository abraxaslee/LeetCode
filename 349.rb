# 349. Intersection of Two Arrays
# 60 / 60 test cases passed.
# Status: Accepted
# Runtime: 40 ms

require 'set'
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
    (nums1.to_set & nums2.to_set).to_a
end