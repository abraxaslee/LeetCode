# 8. String to Integer (atoi)
# 1047 / 1047 test cases passed.
# Status: Accepted
# Runtime: 79 ms

# @param {String} str
# @return {Integer}
def my_atoi(str)
    ans = str.to_i
    return 2147483647 if ans > 2147483647
    return -2147483648 if ans < -2147483648
    ans
end