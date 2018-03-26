# 6. ZigZag Conversion
# 1158 / 1158 test cases passed.
# Status: Accepted
# Runtime: 108 ms
# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows > s.length
    n = num_rows.times.map {|x| x}
    bucket = Array.new(n.length) { Array.new() }
    n += n[1..n.length-2].reverse if n.length > 1

    i = 0
    s.each_char do |c|
      bucket[n[i]].push(c)
      i = (i + 1) % n.length
    end
    bucket.map(&:join).join
end
