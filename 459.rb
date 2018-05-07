# 459. Repeated Substring Pattern
# 107 / 107 test cases passed.
# Status: Accepted
# Runtime: 64 ms

# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    return false if s.length < 2
    return true if s.count(s[0]) == s.length
    for window_size in 2..s.length/2
      next unless s.length % window_size == 0
      i = window_size
      while i < s.length
        break unless s[0, window_size] == s[i, window_size]
        i += window_size
      end
      return true if i == s.length
    end
    return false
end