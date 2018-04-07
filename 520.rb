# 520. Detect Capital
# 550 / 550 test cases passed.
# Status: Accepted
# Runtime: 40 ms

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
    return true if word == word.capitalize
    return true if word == word.upcase
    return true if word == word.downcase
    return false
end