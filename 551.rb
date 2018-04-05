# 551. Student Attendance Record I
# 113 / 113 test cases passed.
# Status: Accepted
# Runtime: 36 ms

# @param {String} s
# @return {Boolean}
def check_record(s)
    return false if s.count('A') > 1
    return false if s.index('LLL') != nil
    return true
end
