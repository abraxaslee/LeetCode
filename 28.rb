# 28. Implement strStr()
# 74 / 74 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
    haystack.each_char.with_index do |c, i|
      next unless c == needle[0]
      return -1 if haystack.length - i < needle.length
      return i if haystack[i, needle.length] == needle
    end
    return -1
end
