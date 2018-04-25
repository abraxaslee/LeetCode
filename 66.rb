# 66. Plus One
# 109 / 109 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    n = 0
    for i in 0...digits.length
      n += digits[digits.length-i-1] * (10 ** i)
    end
    n += 1
    return n.to_s.split('').map(&:to_i)
end
