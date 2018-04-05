# 657. Judge Route Circle
# 62 / 62 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  moves.count('U') == moves.count('D') && moves.count('L') == moves.count('R')
end
