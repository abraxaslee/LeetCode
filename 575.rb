# 575. Distribute Candies
# 205 / 205 test cases passed.
# Status: Accepted
# Runtime: 144 ms

# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
    [candies.uniq.length, candies.length/2].min
end
