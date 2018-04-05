# 771. Jewels and Stones
# 254 / 254 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    s.count(j)
    # return 0 if j.empty? || s.empty?
    # counter = Hash.new(0)
    # result = 0

    # s.each_char {|c| counter[c] += 1}
    # j.each_char {|c| result += counter[c]}
    # return result
end