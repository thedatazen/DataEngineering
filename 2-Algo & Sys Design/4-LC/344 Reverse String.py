'''

Write a function that reverses a string. The input string is given as an array of characters char[].

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

You may assume all the characters consist of printable ascii characters.

Example 1:

Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]
Example 2:

Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]

'''

'''
It is very tempting in Python just to use reverse() function, but I think it is not fully honest solution.
Instead, we go from the start and the end of the string and swap pair of elements. One thing, that we need to do is to stop at the middle of our string. We can see this as simplified version of two points approach, because each step we increase one of them and decrease another.

Complexity: Time complexity is O(n) and additional space is O(1).
'''
class Solution:
    def reverseString(self, s):
        for i in range(len(s)//2): s[i], s[-i-1] = s[-i-1], s[i]
        
      