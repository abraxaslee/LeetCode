# 496. Next Greater Element I
# 17 / 17 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
    next_greater_hash = Hash.new(-1)
    stack = []
    nums.each do |n|
        while stack.length > 0 && n > stack[-1]
            top = stack.pop
            next_greater_hash[top] = n
        end
        stack << n
    end
    
    find_nums.map {|fn| next_greater_hash[fn] }
end