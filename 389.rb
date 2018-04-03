# 389. Find the Difference
# 54 / 54 test cases passed.
# Status: Accepted
# Runtime: 100 ms
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    return t if s.empty?
    (t.split('').map(&:ord).reduce(&:+) - s.split('').map(&:ord).reduce(&:+)).chr
end