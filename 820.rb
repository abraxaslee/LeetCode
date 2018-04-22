# 820. Short Encoding of Words
# 30 / 30 test cases passed.
# Status: Accepted
# Runtime: 124 ms

require 'set'
# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
   reference = Set.new(words)
   words.each do |w|
    for i in 1...w.length
      reference.delete w[i..w.length]
    end
   end

   reference.to_a.map(&:length).reduce(&:+) + reference.length
end
