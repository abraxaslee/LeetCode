# 806. Number of Lines To Write String
# 26 / 26 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
    return [0, 0] if s.empty?
    weight_hash = Hash.new(0)
    widths.each_with_index {|w, i| weight_hash[i+97] = w }

    lines = [0]
    top = 0
    
    s.each_char do |c|
        top += 1 if weight_hash[c.ord] + lines[top] > 100
        lines[top] = 0 if lines[top] == nil
        lines[top] += weight_hash[c.ord]
    end
    return [top+1, lines[top]]
end
