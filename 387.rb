# 387. First Unique Character in a String
# 104 / 104 test cases passed.
# Status: Accepted
# Runtime: 268 ms
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    counter = Hash.new(0)
    first_occurrence = Hash.new(-1)

    s.each_char.with_index do |c,i|
      counter[c] += 1
      first_occurrence[c] = i unless first_occurrence.has_key? c
    end

    first_char_index = 2 ** 32
    first_char = nil
    counter.each do |k,v| 
      next unless v == 1
      if first_occurrence[k] < first_char_index
        first_char_index = first_occurrence[k]
        first_char = k
      end
    end

    return -1 if first_char == nil
    return first_char_index
end
