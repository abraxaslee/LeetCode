# 121. Best Time to Buy and Sell Stock
# 200 / 200 test cases passed.
# Status: Accepted
# Runtime: 44 ms

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    local_min_index = 0
    profit = 0

    prices.each_with_index do |p, i|
      if p < prices[local_min_index]
        local_min_index = i
      elsif p - prices[local_min_index] > profit
        profit = p - prices[local_min_index]
      end
    end
    profit
end
