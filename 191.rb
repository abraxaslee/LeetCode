# 191. Number of 1 Bits
# 600 / 600 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    n.to_s(2).count('1')
end
