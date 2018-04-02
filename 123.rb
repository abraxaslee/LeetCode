# 123. Best Time to Buy and Sell Stock III
# Reference: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/discuss/39615/My-explanation-for-O(N)-solution!

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    sell1 = 0
    sell2 = 0
    buy1 = -4611686018427387903
    buy2 = -4611686018427387903

    prices.each do |p|
      buy1 = [buy1, -p].max
      sell1 = [sell1, buy1 + p].max
      buy2 = [buy2, sell1 - p].max
      sell2 = [sell2, buy2 + p].max
    end
    sell2
end
