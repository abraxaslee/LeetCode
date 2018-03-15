# 383. Ransom Note
# 126 / 126 test cases passed.
# Status: Accepted
# Runtime: 419 ms

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    ransom = Hash.new 0
    source = Hash.new 0
    ransom_note.split('').each {|r| ransom[r] += 1}
    magazine.split('').each {|m| source[m] += 1}

    result = true
    ransom.each do |word,count| 
      result = result && (source[word] >= ransom[word])
    end
    result
end