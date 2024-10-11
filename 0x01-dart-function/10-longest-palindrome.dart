import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }
  String maxSubstring = 'none';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 2; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && (maxSubstring == 'none' || substring.length > maxSubstring.length)) {
        maxSubstring = substring;
      }
    }
  }
  return maxSubstring;
}
