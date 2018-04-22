# 822. Card Flipping Game
# 169 / 169 test cases passed.
# Status: Accepted
# Runtime: 52 ms

require 'set'
# @param {Integer[]} fronts
# @param {Integer[]} backs
# @return {Integer}
def flipgame(fronts, backs)
    options = Set.new
    conflict = Set.new

    fronts.each_with_index do |f, i|
      if f == backs[i]
        conflict.add(f)
      else
        options.add(f)
        options.add(backs[i])
      end
    end

    result = (options - conflict).to_a.sort
    return result[0] if result.length > 0
    return 0
end
