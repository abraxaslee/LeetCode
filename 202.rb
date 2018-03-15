# 202. Happy Number
# 401 / 401 test cases passed.
# Status: Accepted
# Runtime: 40 ms

require 'set'

def get_sum(n)
  sum = 0
  while n >= 10
    sum += (n % 10)**2
    n = n / 10
  end
  sum += n **2
end

HAPPY_SET = Set.new
NON_HAPPY_SET = Set.new

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    sequence = Set.new
    while !sequence.include? (n)
      sequence.add(n)
      if HAPPY_SET.include?(n) || n == 1
        HAPPY_SET.merge(sequence)
        return true
      elsif NON_HAPPY_SET.include?(n)
        break
      end
      n = get_sum(n)
    end
    NON_HAPPY_SET.merge(sequence)
    return false
end
