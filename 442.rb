# 442. Find All Duplicates in an Array
# 28 / 28 test cases passed.
# Status: Accepted
# Runtime: 128 ms

# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    cache = Hash.new(false)
    result = []
    nums.each do |n|
        if cache[n]
            result << n
        else
            cache[n] = true
        end
    end
    result
end