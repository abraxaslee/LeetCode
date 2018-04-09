# 796. Rotate String
# 44 / 44 test cases passed.
# Status: Accepted
# Runtime: 32 ms

# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
    return true if a == b
    return false unless a.length == b.length
    a.each_char.with_index do |c,i|
      if c == b[0]
        head = i
        return true if b.start_with?(a[head..a.length]) && b.end_with?(a[0...head])
      end
    end
    return false
end
