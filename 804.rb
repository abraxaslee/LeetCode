# 804. Unique Morse Code Words
# 83 / 83 test cases passed.
# Status: Accepted
# Runtime: 48 ms

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    dict = {"a"=>".-", "b"=>"-...", "c"=>"-.-.", "d"=>"-..", "e"=>".", "f"=>"..-.", "g"=>"--.", "h"=>"....", "i"=>"..", "j"=>".---", "k"=>"-.-", "l"=>".-..", "m"=>"--", "n"=>"-.", "o"=>"---", "p"=>".--.", "q"=>"--.-", "r"=>".-.", "s"=>"...", "t"=>"-", "u"=>"..-", "v"=>"...-", "w"=>".--", "x"=>"-..-", "y"=>"-.--", "z"=>"--.."}.freeze
    words.map {|w| w.split('').map {|c| dict[c]}.join('') }.uniq.length
end
