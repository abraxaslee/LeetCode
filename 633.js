// 633. Sum of Square Numbers
// 124 / 124 test cases passed.
// Status: Accepted
// Runtime: 60 ms

/**
 * @param {number} c
 * @return {boolean}
 */
var judgeSquareSum = function(c) {
    for (let a = 0; a * a <= c; a++) {
        let b = c - a*a
        let bFactor = Math.floor(Math.sqrt(b))
        if (b == bFactor * bFactor)
            return true
    }
    return false
};