# 495. Teemo Attacking
# 39 / 39 test cases passed.
# Status: Accepted
# Runtime: 80 ms

# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
    return 0 if time_series.empty? || duration == 0
    last_recovery_time = -1
    poison_time = 0
    time_series.each do |t|
        poison_time += duration
        poison_time += t - 1 - last_recovery_time if last_recovery_time >= t
        last_recovery_time = (t + duration - 1)
    end
    poison_time
end
