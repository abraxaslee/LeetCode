# 389. Find the Difference
# 54 / 54 test cases passed.
# Status: Accepted
# Runtime: 52 ms
# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    return t if s.empty?
    count = Hash.new(0)
    s.each_char do |c|
      count[c] += 1
    end
    t.each_char do |c|
      count[c] -= 1
    end
    count.detect {|k,v| v < 0}[0]
end

puts find_the_difference('aa', 'aab')