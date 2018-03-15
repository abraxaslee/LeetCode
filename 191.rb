# 191. Number of 1 Bits
# 
# 600 / 600 test cases passed.
# Status: Accepted
# Runtime: 82 ms

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    result = n.to_s(2).split('').select {|x| x == '1'}.map(&:to_i).reduce(&:+)
    return 0 if result.nil?
    return result
end