# 824. Goat Latin
# 99 / 99 test cases passed.
# Status: Accepted
# Runtime: 36 ms

def is_vowel(c)
  ch = c.downcase
  ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u'
end

# @param {String} s
# @return {String}
def to_goat_latin(s)
    words = s.split(' ')
    words = words.map.with_index do |w, i|
      unless w.empty?
        if is_vowel(w[0])
          w += "ma"
        else
          w = w[1...w.length] + w[0] + "ma"
        end
        w += 'a' * (i+1)
      end
      w
    end

    words.join(' ')
end
