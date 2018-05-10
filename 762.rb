# 762. Prime Number of Set Bits in Binary Representation
# 200 / 200 test cases passed.
# Status: Accepted
# Runtime: 200 ms

PRIME = {2=>true,3=>true,5=>true,7=>true,11=>true,13=>true,17=>true,19=>true}.freeze
@hamming = [0, 1]
@hamming_prime_count = [0, 0]

def build_hamming
    count = 0
    for i in 2..(10**6)
      @hamming[i] = @hamming[i/2] + (i&1)
      count += 1 if PRIME[@hamming[i]]
      @hamming_prime_count << count
    end
end

# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def count_prime_set_bits(l, r)
    build_hamming if @hamming_prime_count.length == 2
    return @hamming_prime_count[r] - @hamming_prime_count[l-1]
end
