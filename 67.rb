# 67. Add Binary
# 294 / 294 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    (a.to_i(2) + b.to_i(2)).to_s(2)
end

puts add_binary("10010010101010010101010010101010", "11111100011010101010011")

# puts add_binary("111", "100") + ' ' + add_binary("111", "111")