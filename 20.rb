# 20. Valid Parentheses
# 76 / 76 test cases passed.
# Status: Accepted
# Runtime: 36 ms

MIRROR = {
  ')' => '(',
  ']' => '[',
  '}' => '{'
}

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.each_char do |c|
      if MIRROR[c]
        return false unless stack[-1] == MIRROR[c]
        stack.pop
      else
        stack.push c
      end
    end

    return stack.empty?
end

