# 350. Intersection of Two Arrays II
# 61 / 61 test cases passed.
# Status: Accepted
# Runtime: 40 ms
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    return intersect(nums2, nums1) if nums2.length > nums1.length
    counter = Hash.new(0)
    result = []
    nums1.each {|n| counter[n] += 1}
    nums2.each do |n|
      if counter[n] > 0
        counter[n] -= 1
        result.push n
      end
    end
    result
end

puts intersect [1,2,3,4,5], [1,1,2,2]