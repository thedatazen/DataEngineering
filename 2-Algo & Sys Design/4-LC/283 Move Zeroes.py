'''

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]

Note:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.

'''

class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        count=nums.count(0)
        nums[:]=[i for i in nums if i != 0]
        nums+=[0]*count
            
class Solution:
    def moveZeroes(self, nums):
        for i in range(len(nums))[::-1]:
            if nums[i] == 0:
                nums.pop(i)
                nums.append(0)

#Time complexity: O(n). Our fast pointer does not visit the same spot twice.
#Space complexity: O(1). All operations are made in-place                
class Solution:
    def moveZeroes(self, nums: list) -> None:
        slow = 0
        for fast in range(len(nums)):
            if nums[fast] != 0 and nums[slow] == 0:
                nums[slow], nums[fast] = nums[fast], nums[slow]

            # wait while we find a non-zero element to
            # swap with you
            if nums[slow] != 0:
                slow += 1