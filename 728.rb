# 728. Self Dividing Numbers
# 31 / 31 test cases passed.
# Status: Accepted
# Runtime: 72 ms

require 'set'
@cache_dividable = Set.new
@cache_non_dividable = Set.new

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
    (left..right).select {|n| self_dividable? n}
end

def self_dividable?(num)
    return false if num % 10 == 0
    return true if num < 10
    return true if @cache_dividable.include? num
    return false if @cache_non_dividable.include? num
    
    target = num
    result = true
    while num > 0
        value = num % 10
        if value == 0
            result = false
            break
        elsif target % value != 0
            result = false
            break
        end
        num /= 10
    end
    
    if result
        @cache_dividable.add target
    else
        @cache_non_dividable.add target
    end
    
    return result
end