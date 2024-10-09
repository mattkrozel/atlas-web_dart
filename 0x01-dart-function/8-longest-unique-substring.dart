import 'dart:math';

String longestUniqueSubstring(String str) {
  Map<String, int> map = {};
  int startPoint = 0;
  int maxLength = 0;
  String maxSubstring = '';

  for (int endPoint = 0; endPoint < str.length; endPoint++) {
    if (map.containsKey(str[endPoint])) {
      startPoint = max(map[str[endPoint]]! + 1, startPoint);
    }
    if (endPoint - startPoint + 1 > maxLength) {
      maxLength = endPoint - startPoint + 1;
      maxSubstring = str.substring(startPoint, endPoint + 1);
    }
    map[str[endPoint]] = endPoint;
  }
  return maxSubstring;
}