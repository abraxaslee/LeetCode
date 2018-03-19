/**
 * 65. Valid Number
 * 1481 / 1481 test cases passed.
 * Status: Accepted
 * Runtime: 92 ms
 * @param {string} s
 * @return {boolean}
 */
const isNumber = (s) => {
    // the first part is to match "1234." and second part to match ".1234", and else case to handle "." as false
    return /^\s*[-+]?[0-9]+\.?[0-9]*([eE][-+]?[0-9]+)?\s*$/.test(s) || /^\s*[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?\s*$/.test(s)
};
