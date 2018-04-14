# 273. Integer to English Words
# 601 / 601 test cases passed.
# Status: Accepted
# Runtime: 40 ms

ENGLISH_NUMBER = {
  900 => "Nine Hundred",
  800 => "Eight Hundred",
  700 => "Seven Hundred",
  600 => "Six Hundred",
  500 => "Five Hundred",
  400 => "Four Hundred",
  300 => "Three Hundred",
  200 => "Two Hundred",
  100 => "One Hundred",
  90 => "Ninety",
  80 => "Eighty",
  70 => "Seventy",
  60 => "Sixty",
  50 => "Fifty",
  40 => "Forty",
  30 => "Thirty",
  20 => "Twenty",
  19 => "Nineteen",
  18 => "Eighteen",
  17 => "Seventeen",
  16 => "Sixteen",
  15 => "Fifteen",
  14 => "Fourteen",
  13 => "Thirteen",
  12 => "Twelve",
  11 => "Eleven",
  10 => "Ten",
  9 => "Nine",
  8 => "Eight",
  7 => "Seven",
  6 => "Six",
  5 => "Five",
  4 => "Four",
  3 => "Three",
  2 => "Two",
  1 => "One"
}

def to_english(num)
  english = []
  while num > 0
    englishKey = ENGLISH_NUMBER.keys.bsearch {|x| x <= num}
    english << ENGLISH_NUMBER[englishKey]
    num -= englishKey
  end
  english.join(' ')
end

# @param {Integer} num
# @return {String}
def number_to_words(num)
    return 'Zero' if num == 0
    return 'Negative ' + number_to_words(-num) if num < 0

    english = []
    seperator = [[9, 'Billion'], [6, 'Million'], [3, 'Thousand']]
    seperator.each do |power, unit|
      unit_number = (num / (10 ** power)) % 1000
      english << to_english(unit_number) << unit if unit_number > 0
    end

    unit_number = num % (1000)
    english << to_english(unit_number) if unit_number > 0
    english.join(' ')
end
