# 283. Move Zeroes
# 21 / 21 test cases passed.
# Status: Accepted
# Runtime: 48 ms
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zeros = 0
    i = 0
    while i < nums.length 
      if nums[i] == 0
        nums.delete_at i
        zeros += 1
      else
        i += 1
      end
    end
    nums.concat(Array.new(zeros) { 0 })
end

puts move_zeroes([0,1,0,3,12])