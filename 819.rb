# 819. Most Common Word
# 46 / 46 test cases passed.
# Status: Accepted
# Runtime: 40 ms

require 'set'

# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  counter = Hash.new(0)
  blacklist = Set.new(banned)
  paragraph.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ').each do |word|
    counter[word] += 1
  end

  counter.sort_by {|_,v| v}

  counter.sort_by {|_,v| v}.reverse.each do |word, count|
    return word unless blacklist.include? word
  end
  ''
end

puts most_common_word "Bob hit a ball, the hit BALL flew far after it was hit.", ['hit', '']