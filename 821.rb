# 821. Shortest Distance to a Character
# 76 / 76 test cases passed.
# Status: Accepted
# Runtime: 64 ms

# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
    pos = []
    s.each_char.with_index do |ch, i|
        pos << i if ch == c
    end
    
    result = Array.new(s.length)
    s.each_char.with_index do |ch, i|
        if ch == c
            result[i] = 0
        else
            result[i] = pos.map {|p| (p - i).abs}.min
        end
    end
    result
end