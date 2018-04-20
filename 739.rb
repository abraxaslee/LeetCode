# 739. Daily Temperatures
# 37 / 37 test cases passed.
# Status: Accepted
# Runtime: 200 ms

# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
    result = Array.new(temperatures.length) {0}
    stack = []
    temperatures.each_with_index do |t, ti|
      while !stack.empty? && temperatures[stack[-1]] < t
        day = stack.pop
        result[day] = ti - day
      end
      stack << ti
    end
    result
end
