# 788. Rotated Digits
# 50 / 50 test cases passed.
# Status: Accepted
# Runtime: 48 ms
require 'set'

@rotatable = Set['2','5','6','9']
@non_rotatable = Set['3','4','7']
@cache = []

def is_rotatable?(s)
  result = false
  s = s.to_s
  s.each_char do |c|
    result = true if @rotatable.include? c
    if @non_rotatable.include? c
      result = false
      break
    end
  end
  result
end

def build_cache
  count = 0
  10010.times do |m|
    s = (m+1).to_s
    result = is_rotatable?(s)
    
    if result
      count += 1 
      @cache.push([m+1, count])
    end
  end
end

# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
    build_cache if @cache.empty?
    @cache.bsearch {|num, _| num > n}[1] -1
end
