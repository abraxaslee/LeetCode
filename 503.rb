# 503. Next Greater Element II
# 224 / 224 test cases passed.
# Status: Accepted
# Runtime: 108 ms

# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_elements(nums)
    next_greater_array = Array.new(nums.size) {-1}
    stack = []
    nums.each_with_index do |n, i|
        while stack.length > 0 && n > nums[stack[-1]]
            top = stack.pop
            next_greater_array[top] = n
        end
        stack << i
    end
    
    unless stack.empty?
        first_half = nums[0..stack[0]]
        first_half.each_with_index do |n, i|
            while stack.length > 0 && n > nums[stack[-1]]
                top = stack.pop
                next_greater_array[top] = n
            end
        end
    end
    next_greater_array
end