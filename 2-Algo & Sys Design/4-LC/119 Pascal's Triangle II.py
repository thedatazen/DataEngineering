'''

Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle. Notice that the row index starts from 0.

In Pascal's triangle, each number is the sum of the two numbers directly above it.

Follow up: Could you optimize your algorithm to use only O(k) extra space?

Example 1:

Input: rowIndex = 3
Output: [1,3,3,1]
Example 2:

Input: rowIndex = 0
Output: [1]
Example 3:

Input: rowIndex = 1
Output: [1,1]
 

Constraints:
0 <= rowIndex <= 33

'''

#O(K^2)
class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        res = [0, 1, 0]
        while rowIndex:
            res = [0] + [i+j for i,j in zip(res[:-1], res[1:])] + [0]
            rowIndex -=1

        return res[1:-1]
  
#O(K)  
class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        pascal=[]
        value=1
        pascal.append(value)
        for i in range(1,rowIndex+1):
            value=value * (rowIndex+1 -i)/i
            pascal.append(int(value))
        return pascal

