# 3. Longest Substring Without Repeating Characters
# 983 / 983 test cases passed.
# Status: Accepted
# Runtime: 116 ms

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    result = 0
    pos = 0
    occurence = Hash.new(-1)

    s.each_char.with_index do |c, i|
      pos = occurence[c] + 1 unless occurence[c] + 1 > pos
      occurence[c] = i
      result = i - pos + 1 if (i - pos + 1 > result)
    end
    result = s.length - pos if (s.length - pos > result)
    result
end
