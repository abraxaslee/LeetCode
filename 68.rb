# 68. Text Justification
# 25 / 25 test cases passed.
# Status: Accepted
# Runtime: 36 ms

def justify(words, total_length, max_width)
  # puts "#{total_length}, #{words.map(&:length).reduce(&:+)}"
  return words[0].ljust(max_width) if words.length == 1
  total_space_length = max_width - total_length
  min_space_length = total_space_length / (words.length - 1) 

  # case even
  remainder = total_space_length % (words.length - 1)

  words[0...remainder].each {|w| w << ' '} if remainder > 0
  words.join(''.ljust(min_space_length))
end

# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
   bucket = []
   bucket_size = Hash.new(0)

   top = 0

   words.each do |w|
    top += 1 if bucket_size[top] > 0 && bucket_size[top] + bucket[top].length + w.length > max_width

    bucket[top] = [] if bucket[top].nil? 
    bucket[top] << w
    bucket_size[top] += w.length
   end

   bucket.map.with_index do |w,i|
    unless i == bucket.length-1
      justify(w, bucket_size[i], max_width) 
    else
      w.join('').ljust(max_width)
    end
   end
end
