# 122. Best Time to Buy and Sell Stock II
# 198 / 198 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    for i in 1...(prices.length)
      profit += prices[i] - prices[i-1] if prices[i] > prices[i-1]
    end
    profit
end
