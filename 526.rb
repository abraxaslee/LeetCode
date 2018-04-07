# 526. Beautiful Arrangement
# 15 / 15 test cases passed.
# Status: Accepted
# Runtime: 1436 ms

def backtrack (pos, is_visited)
  return (@result += 1) if pos > @target
  for n in 1..@target
    if (!is_visited[n] && ( n % pos == 0 || pos % n == 0))
      is_visited[n] = true
      backtrack(pos + 1, is_visited)
      is_visited[n] = false
    end
  end
end

# @param {Integer} n
# @return {Integer}
def count_arrangement(n)
    @result = 0
    @target = n
    is_visited = Array.new(n) { false }
    backtrack(1, is_visited)
    return @result
end
