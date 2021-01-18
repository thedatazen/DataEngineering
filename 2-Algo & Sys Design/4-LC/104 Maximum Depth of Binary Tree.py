'''
Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Example 1:

https://assets.leetcode.com/uploads/2020/11/26/tmp-tree.jpg

Input: root = [3,9,20,null,null,15,7]
Output: 3
Example 2:

Input: root = [1,null,2]
Output: 2
Example 3:

Input: root = []
Output: 0
Example 4:

Input: root = [0]
Output: 1

Constraints:

The number of nodes in the tree is in the range [0, 104].
-100 <= Node.val <= 100
'''

#BFS Solution
class Solution(object):
    def maxDepth(self, root: TreeNode) -> int:
        """
        :type root: TreeNode
        :rtype: int
        """
        depth = 0
        level = [root] if root else []
        while level:
            depth += 1
            queue = []
            for el in level:
                if el.left:
                    queue.append(el.left)
                if el.right:
                    queue.append(el.right)
            level = queue            
        return depth

#Recursive
class Solution(object):
    def maxDepth(self, root: TreeNode) -> int:
        if not root:
            return 0
        return max(self.maxDepth(root.left), self.maxDepth(root.right)) + 1
 
#Same like above - 1 liner
class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        return 1 + max(map(self.maxDepth, (root.left, root.right))) if root else 0

#Same like above - 1 liner
class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        return root and 1 + max(map(self.maxDepth, (root.left, root.right))) or 0
 