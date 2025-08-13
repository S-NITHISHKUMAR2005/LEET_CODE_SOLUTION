class Solution:
    def isPalindrome(self, s: str) -> bool:
        res = ""
        for x in range(len(s)):
            if s[x] >= 'a' and s[x] <= 'z':
                res += s[x]
            elif s[x] >= '0' and s[x] <= '9':
                res += s[x]
            elif s[x] >= 'A' and s[x] <= 'Z':
                res += chr(ord(s[x])+32)
        Y = res[::-1]
        return Y == res
        