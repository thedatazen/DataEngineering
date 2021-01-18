'''

Given a non-negative integer numRows, generate the first numRows of Pascal's triangle. In Pascal's triangle, each number is the sum of the two numbers directly above it.

Example:
Input: 5
Output:
[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]

'''

class Solution:
    def generate(self, numRows):
        lists = []
        for i in range(numRows):
            lists.append([1]*(i+1))
            if i>1 :
                for j in range(1,i):
                    lists[i][j]=lists[i-1][j-1]+lists[i-1][j]
        return lists
        
class Solution:
    def generate(self, numRows):
        n,b,res=0,[1],[]
        while n<numRows:
            res.append(b)
            b=[1]+[b[i]+b[i+1] for i in range(len(b)-1)]+[1]
            n+=1
        return res