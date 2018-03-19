/**
 * 67. Add Binary
 * 294 / 294 test cases passed.
 * Status: Accepted
 * Runtime: 64 ms
 * @param {string} a
 * @param {string} b
 * @return {string}
 */

const addBinary = (a, b) => {
  let padding = (8 - a.length%8) %8
  a = '00000000'.substring(0, padding) + a

  padding = (8 - b.length%8) %8
  b = '00000000'.substring(0, padding) + b

  const stringA = a.match(/\d{1,8}/g).reverse()
  const stringB = b.match(/\d{1,8}/g).reverse()
  const longerString = stringA.length > stringB.length ? stringA : stringB

  let result = []
  let overflow = false
  longerString.forEach((v, k) => {
    let temp = (parseInt(stringA[k] || '0', 2) + parseInt(stringB[k] || '0', 2) + (overflow ? 1 : 0)).toString(2)
    overflow = temp.length > 8
    temp = temp.length > 8 ? temp.substring(temp.length - 8, temp.length) : temp
    temp = temp.length < 8 ? '00000000'.substring(0, (8 - temp.length%8) %8) + temp : temp
    result.unshift(temp.toString(2))
  })
  if (overflow)
    result.unshift("1")
  if (result[0])
    result[0] = (parseInt(result[0], 2)).toString(2)
  return result.join('')
}