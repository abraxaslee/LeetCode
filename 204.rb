# 204. Count Primes
# 20 / 20 test cases passed.
# Status: Accepted
# Runtime: 144 ms

require 'prime'
def count_primes(n)
    Prime.each(n - 1).count
end
