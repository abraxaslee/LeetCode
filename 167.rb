# 167. Two Sum II - Input array is sorted
# 17 / 17 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
   left, right = 0, numbers.length-1
   loop do
    t = numbers[left] + numbers[right]
    return [left+1, right+1] if t == target

    if t < target
      left += 1
    else
      right -=1
    end
   end
end
