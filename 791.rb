# 791. Custom Sort String
# 39 / 39 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String} s
# @param {String} t
# @return {String}
def custom_sort_string(s, t)
  sort_order = Hash.new(0)
  ('a'..'z').each {|c| sort_order[c] = c.ord}
  s.each_char.with_index {|c, i| sort_order[c] = i }
  t.split('').sort_by {|c| sort_order.fetch(c) }.join('')
end
