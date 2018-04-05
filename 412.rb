# 412. Fizz Buzz
# 8 / 8 test cases passed.
# Status: Accepted
# Runtime: 64 ms

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    result = (1..n).to_a.map(&:to_s)
    
    for i in 1..(n/3)
      result[i*3 -1] = 'Fizz'
    end

    for i in 1..(n/5)
      result[i*5 -1] = 'Buzz'
    end

    for i in 1..(n/15)
      result[i*15 -1] = 'FizzBuzz'
    end

    result
end
