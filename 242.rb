# 242. Valid Anagram
# 34 / 34 test cases passed.
# Status: Accepted
# Runtime: 116 ms
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if t.length != s.length

    counter = Hash.new(0)
    s.each_char { |c| counter[c] += 1 }
    t.each_char { |c| counter[c] -= 1 }

    counter.values.all? { |val| val == 0 }
end
