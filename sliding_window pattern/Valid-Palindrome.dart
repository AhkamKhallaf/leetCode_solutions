1class Solution {
2 
3    bool isPalindrome(String s) {
4  int left = 0;
5  int right = s.length - 1;
6
7  while (left < right) {
8     while (left < right && !isAlphaNum(s[left])) {
9      left++;
10    }
11
12     while (left < right && !isAlphaNum(s[right])) {
13      right--;
14    }
15
16     if (s[left].toLowerCase() != s[right].toLowerCase()) {
17      return false;
18    }
19
20    left++;
21    right--;
22  }
23
24  return true;
25}
26
27bool isAlphaNum(String c) {
28   return RegExp(r'[a-zA-Z0-9]').hasMatch(c);
29}
30
31 
32}