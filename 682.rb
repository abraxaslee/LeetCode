# 682. Baseball Game
# 39 / 39 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String[]} ops
# @return {Integer}
def cal_points(ops)
    rounds = []
    ops.each do |op|
        if op == '+'
            rounds.push rounds[-1] + rounds[-2]
        elsif op == 'D'
            rounds.push rounds[-1] *2
        elsif op == 'C'
            rounds.pop
        else
            rounds.push op.to_i
        end
    end
    
    rounds.reduce(0, &:+)
end