# 258. Add Digits
# 1101 / 1101 test cases passed.
# Status: Accepted
# Runtime: 75 ms

# @param {Integer} num
# @return {Integer}
def add_digits(num)
    while num > 9
      result = 0
      while num > 0
        result += num % 10
        num /= 10
      end
        num = result
    end
    num
end