# 122. Best Time to Buy and Sell Stock II
# 198 / 198 test cases passed.
# Status: Accepted
# Runtime: 44 ms

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    local_min_index = 0
    local_max_index = 0
    return 0 if prices.empty?

    prices.each_with_index do |p, i|
      if p > prices[local_max_index]
        local_max_index = i
      elsif p < prices[local_max_index]
        puts "p #{p}, min #{prices[local_min_index]} max #{prices[local_max_index]}"
        profit += prices[local_max_index] - prices[local_min_index]
        local_max_index = i
        local_min_index = i
      end
    end
    profit += prices[local_max_index] - prices[local_min_index]
    profit
end
