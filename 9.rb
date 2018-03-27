# 9. Palindrome Number
# 11507 / 11507 test cases passed.
# Status: Accepted
# Runtime: 168 ms
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0
    return true if x >= 0 && x < 10
    digits = Math.log10(x).to_i
    for i in 0..(digits/2)
        return false unless (x / (10**i) %10) == (x / (10**(digits-i)) %10)
    end
    return true
end
