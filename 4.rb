# 4. Median of Two Sorted Arrays
# 2080 / 2080 test cases passed.
# Status: Accepted
# Runtime: 84 ms
# Reference: https://www.youtube.com/watch?v=KB9IcSCDQ9k
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  return find_median_sorted_arrays(nums2, nums1) if nums1.length > nums2.length

  if nums1.empty?
    if nums2.empty?
      return 0.0
    elsif nums2.length % 2 == 0
      return (nums2[nums2.length/2 -1] + nums2[nums2.length/2])/2.0
    elsif nums2.length % 2 == 1
      return nums2[nums2.length/2].to_f
    end
  end

  k = (nums1.length + nums2.length + 1) /2

  min = 0
  max = nums1.length

  while min < max
    mid1 = (min + max) /2
    mid2 = k - mid1

    if nums1[mid1] < nums2[mid2 - 1]
      min = mid1 +1
    else
      max = mid1
    end
  end

  mid1 = min
  mid2 = k - min

  median1 = ([
    mid1 - 1 < 0 ? nil : nums1[mid1-1],
    mid2 - 1 < 0 ? nil : nums2[mid2-1]
  ]).compact.max

  return median1.to_f if (nums1.length + nums2.length) %2 == 1

  median2 = ([
    mid1 >= nums1.length ? nil : nums1[mid1],
    mid2 >= nums2.length ? nil : nums2[mid2]
  ]).compact.min

  return (median1 + median2) / 2.0
end
