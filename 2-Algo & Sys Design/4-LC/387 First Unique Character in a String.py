'''

Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

Examples:

s = "leetcode"
return 0.

s = "loveleetcode"
return 2.

Note: You may assume the string contains only lowercase English letters.

'''

class Solution:
    def firstUniqChar(self, s: str) -> int:
        letters='abcdefghijklmnopqrstuvwxyz'
        index=[s.index(l) for l in letters if s.count(l) == 1]
        return min(index) if len(index) > 0 else -1
        
class Solution:
    def firstUniqChar(self, s: str) -> int:
        d = {}
        seen = set()
        for idx, c in enumerate(s):
            if c not in seen:
                d[c] = idx
                seen.add(c)
            elif c in d:
                del d[c]
        return min(d.values()) if d else -1
        
class Solution:
    def firstUniqChar(self, s: str) -> int:
        return min([s.find(c) for c in string.ascii_lowercase if s.count(c)==1] or [-1])