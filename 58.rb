# 58. Length of Last Word
# 59 / 59 test cases passed.
# Status: Accepted
# Runtime: 32 ms

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  s.strip!
  last_pos = s.rindex(' ')
  return s.length unless last_pos
  return s.length - last_pos - 1
end