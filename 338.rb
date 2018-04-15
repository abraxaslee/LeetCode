# 338. Counting Bits
# 15 / 15 test cases passed.
# Status: Accepted
# Runtime: 76 ms

@cache = [0, 1]
# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
    return @cache[0..num] if @cache.length > num
    for i in @cache.length..num
        @cache << ((i%2 == 0) ? @cache[i/2] : @cache[i-1] + 1 )
    end
    @cache[0..num]
end
