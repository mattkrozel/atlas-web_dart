bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  int word = 0;
  int wordReversed = s.length - 1;

  while (word < wordReversed) {
    if (s[word] != s[wordReversed]) {
      return false;
    }
    word++;
    wordReversed--;
  }
  return true;
}
