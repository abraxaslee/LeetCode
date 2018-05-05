# 263. Ugly Number
# 1012 / 1012 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
    return false if num < 1

    while num % 5 == 0
        num /= 5
    end
    while num % 3 == 0
        num /= 3
    end
    while num % 2 == 0
        num /= 2
    end
    
    return num == 1
end
