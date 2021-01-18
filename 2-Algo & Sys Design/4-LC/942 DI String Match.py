'''
Given a string S that only contains "I" (increase) or "D" (decrease), let N = S.length.

Return any permutation A of [0, 1, ..., N] such that for all i = 0, ..., N-1:

If S[i] == "I", then A[i] < A[i+1]
If S[i] == "D", then A[i] > A[i+1]

Example 1:

Input: "IDID"
Output: [0,4,1,3,2]
Example 2:

Input: "III"
Output: [0,1,2,3]
Example 3:

Input: "DDI"
Output: [3,2,0,1]

Note:

1 <= S.length <= 10000
S only contains characters "I" or "D".

'''

class Solution:
    def diStringMatch(self, S):
        left = right = 0
        res = [0]
        for i in S:
            if i == "I":
                right += 1
                res.append(right)
            else:
                left -= 1
                res.append(left)
        return [i - left for i in res]
        
        
'''
Think of available numbers to put as an array of [0, 1, 2, ..., len(S)]
When you see "I", your safest option is to put lowest(leftmost) number for the next move, so it will always increase
When you see "D", your safest option is to put highest(rightmost) number for the next move, so it will always decrease
Don't forget to put latest number when l == r
'''
class Solution:
    def diStringMatch(self, S):
        l, r, arr = 0, len(S), []
        for s in S:
            arr.append(l if s == "I" else r)
            l, r = l + (s == "I"), r - (s == "D")
        return arr + [l]