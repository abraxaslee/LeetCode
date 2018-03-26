# 7. Reverse Integer
# 1032 / 1032 test cases passed.
# Status: Accepted
# Runtime: 52 ms
# @param {Integer} x
# @return {Integer}
def reverse(x)
    r = x.to_s.split('').reverse.join('').to_i
    r *= -1 if x < 0
    r = 0 if r > 2147483647 || r < -2147483648
    return r
end