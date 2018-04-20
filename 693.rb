# 693. Binary Number with Alternating Bits
# 204 / 204 test cases passed.
# Status: Accepted
# Runtime: 32 ms

# def build_cache
#   result = []
#   s = ""
#   for i in 1..33
#     s += (i%2).to_s
#     result << s
#   end
#   result.map {|n| n.to_i(2) }
# end

# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
    # cache = build_cache
    # cache.include? n
    [1, 2, 5, 10, 21, 42, 85, 170, 341, 682, 1365, 2730, 5461, 10922, 21845, 43690, 87381, 174762, 349525, 699050, 1398101, 2796202, 5592405, 11184810, 22369621, 44739242, 89478485, 178956970, 357913941, 715827882, 1431655765, 2863311530, 5726623061].include? n
end
