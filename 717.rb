# 717. 1-bit and 2-bit Characters
# 93 / 93 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  return true if bits.length > 2 && bits[-1] == 0 && bits[-2] == 0

  while !bits.empty?
    if bits[0] == 0
      @last = 1
      bits.shift
    else bits[0] == 1
      @last = 2
      bits.shift
      bits.shift
    end
  end
  return @last == 1
end
