# 415. Add Strings
# 315 / 315 test cases passed.
# Status: Accepted
# Runtime: 60 ms

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
    return add_strings(num2, num1) if num2.length > num1.length
    result = []
    overflow = 0
    for i in 0...num1.length
      char1 = num1[num1.length-i-1]
      char2 = i < num2.length ? num2[num2.length-i-1] : "0"

      char3 = (char1.ord + char2.ord) - ("0".ord) * 2 + overflow
      overflow = char3 / 10

      result << ((char3 % 10) + "0".ord).chr
    end
    if overflow == 1
      result << "1"
    end
    result.reverse.join
end
