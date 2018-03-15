# 171. Excel Sheet Column Number
# 1000 / 1000 test cases passed.
# Status: Accepted
# Runtime: 89 ms

# @param {String} s
# @return {Integer}
def title_to_number(s)
    m = Hash.new 0
    for n in 65..90 
      m[n.chr] = n-64
  end
  result = 0
  s.reverse.split('').each_with_index do |x, i|
    result += m[x]*26**(i)
  end
  result
end