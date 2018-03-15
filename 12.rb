# 12. Integer to Roman
# 199 ms
ROMAN_NUMBER = {
   1000 => "M",  
    900 => "CM",  
    500 => "D",  
    400 => "CD",
    100 => "C",  
     90 => "XC",  
     50 => "L",  
     40 => "XL",  
     10 => "X",  
      9 => "IX",  
      5 => "V",  
      4 => "IV",  
      1 => "I"
}


# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman = "" 
  while num > 0
    romanKey = ROMAN_NUMBER.keys.bsearch {|x| x <= num}
    roman += ROMAN_NUMBER[romanKey]
    num -= romanKey
  end
  roman
end

(1000..2000).to_a.each {|i| p int_to_roman(i)}
