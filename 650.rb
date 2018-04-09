# 650. 2 Keys Keyboard
# 126 / 126 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {Integer} n
# @return {Integer}
def min_steps(n)
  return 0 if n < 2

  current, counter, best_counter, step = 1, 0, n, 1
  while current < n
    remaining = n - current
    if remaining > 0 && remaining % current == 0
      # puts "remaining % current == 0: #{remaining} % #{current}"
      counter += 1
      step = current
      # puts "copy #{current}"
    end
    current += step
    counter += 1
    # puts "paste #{step}, become #{current}"
  end
  counter
end
