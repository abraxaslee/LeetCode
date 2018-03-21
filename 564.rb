# 564. Find the Closest Palindrome
# 212 / 212 test cases passed.
# Status: Accepted
# Runtime: 52 ms
# @param {String} n
# @return {String}
def get_palindromic(half_string, is_odd, offset)
  result = []
  if offset
    half_string = (half_string.to_i + offset.to_i)
  end
  half_string = half_string.to_s.split('')
  second_half_string = half_string.reverse

  result.push (half_string.join('') + second_half_string.join(''))
  result.push (half_string.join('') + second_half_string[1..second_half_string.length].join('')) if is_odd && half_string.length > 1
  result.push (half_string[0...half_string.length-1].join('') + second_half_string[1..second_half_string.length].join('')) if is_odd && half_string.length > 1

  result
end

def is_mulitple_of_ten(s)
  s.split('').map(&:to_i).reduce(&:+) == 1
end

def nearest_palindromic(n)
    return ((n.to_i) - 1).to_s if n.to_i <= 10 || is_mulitple_of_ten(n)
    return "9" if n == '11'
    odd = n.length%2 == 1
    mid = n.length/2
    mid -= 1 unless odd && n.length > 1

    half = n[0..mid].to_i

    # pre-calculation
    result = ["9","99","999","9999","99999","999999","9999999","99999999","999999999","9999999999","99999999999","999999999999","9999999999999","99999999999999","999999999999999","9999999999999999","99999999999999999","999999999999999999", "1","11","101","1001","10001","100001","1000001","10000001","100000001","1000000001","10000000001","100000000001","1000000000001","10000000000001","100000000000001","1000000000000001","10000000000000001","100000000000000001","1000000000000000001","10000000000000000001"]
    if n.length > 1
      result = result.concat(get_palindromic(half.to_s, odd, nil))
      result = result.concat(get_palindromic(half.to_s, odd, -1))
      result = result.concat(get_palindromic(half.to_s, odd, 1))
    else
      result.push (n.to_i - 1).to_s
      result.push (n.to_i + 1).to_s
    end
    result.reject! {|w| w == n }
    result.sort_by! {|w| (w.to_i - n.to_i).abs }

    if (result.length > 1 && (result[0].to_i - n.to_i).abs === (result[1].to_i - n.to_i).abs)
      return result[0] if result[0].to_i < result[1].to_i
      return result[1]
    end
    return result[0]
end
