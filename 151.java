// 151. Reverse Words in a String
// 22 / 22 test cases passed.
// Status: Accepted
// Runtime: 3 ms

public class Solution {
    public String reverseWords(String s) {
        if (s.isEmpty())
            return "";
    
        String[] words = s.split(" ");
        StringBuilder result = new StringBuilder();
        for(int i = words.length-1; i >= 0; i--) {
            if (!words[i].isEmpty()) {
                result.append(" ");
                result.append(words[i]);
            }
        }
        return result.toString().trim();
    }
}