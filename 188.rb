# 188. Best Time to Buy and Sell Stock IV
# 211 / 211 test cases passed.
# Status: Accepted
# Runtime: 56 ms
# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
    return 0 if prices.empty? || k < 1

    if k >= prices.length/2
      profit = 0
      for i in 1...(prices.length)
        profit += prices[i] - prices[i-1] if prices[i] > prices[i-1]
      end
      return profit
    end

    k = [prices.length, k].min
    trades = Array.new(k) { [-4611686018427387903, 0] }

    prices.each do |p|
      trades[0][0] = [trades[0][0], -p].max
      trades[0][1] = [trades[0][1], trades[0][0] + p].max
      for i in 1...trades.length
        trades[i][0] = [trades[i][0], trades[i-1][1] - p].max
        trades[i][1] = [trades[i][1], trades[i][0] + p].max
      end
    end
    return trades.last.last
end
