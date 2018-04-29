# 826. Most Profit Assigning Work
# 57 / 57 test cases passed.
# Status: Accepted
# Runtime: 2036 ms

def bsearch(a, value)
  low = 0
  hi = a.size
  while low < hi
    mid = (low + hi) / 2
    if a[mid] == value
      return a[mid]
    elsif a[mid] < value
      low = mid + 1
    else
      hi = mid
    end
  end
  mid -= 1 if a[mid] > value
  return a[mid]
end

# @param {Integer[]} difficulty
# @param {Integer[]} profit
# @param {Integer[]} worker
# @return {Integer}
def max_profit_assignment(difficulty, profit, worker)
   best_tasks = Hash.new(0)

   tasks = difficulty.map.with_index {|_, i| [difficulty[i], profit[i]]}
   tasks = tasks.sort_by {|d, v| d }

   last_max = 0
   tasks.each do |d, v|
    if v > best_tasks[d]
      best_tasks[d] = last_max > v ? last_max : v
      last_max = last_max > v ? last_max : v
    end
   end

   total = 0
   worker.each do |cap|
    next if cap < best_tasks.keys[0]
    ability = bsearch(best_tasks.keys, cap)
    total += best_tasks[ability]
   end
   total
end
