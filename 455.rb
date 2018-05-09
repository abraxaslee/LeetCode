# 455. Assign Cookies
# 21 / 21 test cases passed.
# Status: Accepted
# Runtime: 64 ms

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
    return 0 if g.empty? || s.empty?
    g.sort!
    s.sort!

    i = 0
    j = 0
    while i < g.length && j < s.length
      i += 1 if s[j] >= g[i]
      j += 1
    end
    return i
end
