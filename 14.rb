# 14. Longest Common Prefix
# 117 / 117 test cases passed.
# Status: Accepted
# Runtime: 44 ms

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return '' if strs.empty?
    strs = strs.sort_by(&:length)

    target = strs.shift(1).first # take the shortest string
    prefix = ''
    target.each_char.with_index do |c, i|
      strs.each do |s|
        return prefix if s[i] == nil || s[i] != c
      end
      prefix << c
    end
    return prefix
end
