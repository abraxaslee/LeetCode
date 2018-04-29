# 825. Friends Of Appropriate Ages
# 83 / 83 test cases passed.
# Status: Accepted
# Runtime: 108 ms

# @param {Integer[]} ages
# @return {Integer}
def num_friend_requests(ages)
    total_friends = 0
    ages_count = Hash.new(0)
    ages.each {|age| ages_count[age] += 1 }

    ages_count.each do |age_a, count_a|
        ages_count.each do |age_b, count_b|
          next if age_b <= 0.5 * age_a + 7
          next if age_b > age_a
          next if age_b > 100 && age_a < 100
          total_friends += count_a * count_b
          total_friends -= count_a if age_a == age_b
        end
    end
    total_friends
end