# 125. Valid Palindrome
# 476 / 476 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[\W]/i, '')
  s == s.reverse
end
