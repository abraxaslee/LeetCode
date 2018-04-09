# 763. Partition Labels
# 116 / 116 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {String} s
# @return {Integer[]}
def partition_labels(s)
    counter = Hash.new()
    s.each_char.with_index do |c, i|
      counter[c] = [i] unless counter.has_key?(c)
      counter[c][1] = i
    end

    index_array = counter.values.sort
    current = index_array.shift
    result = []

    while !index_array.empty?
      target = index_array.shift
      if current[1] > target[0] # overlapped
        current = [[current[0], target[0]].min, [current[1], target[1]].max]
      else
        result << (current[1] - current[0] + 1)
        current = target
      end
    end
    result << (current[1] - current[0] + 1)
    result
end
