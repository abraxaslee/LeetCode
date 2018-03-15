# 448. Find All Numbers Disappeared in an Array
# 34 / 34 test cases passed.
# Status: Accepted
# Runtime: 306 ms

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    ((1..nums.length).to_a - nums).sort!
end