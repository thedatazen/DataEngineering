'''


'''

class Solution:
    def minCostClimbingStairs(self, cost: List[int]) -> int:
        # ==== 0. check input
		if not cost:
            return 0
			
        # ==== 1. create an array to memorize the results, and think about how you are going to
		# use/define it.
		# Here, I want this array to help me to memorize the "min cost" at the i-th step
        dp = [0] * len(cost)
        
		# ==== 2. Next, think about what are your first 3 cases (in most of cases) until you find the
		# pattern, which means "what do your dp[0], dp[1], dp[2]... look like?"
		# Let's start from dp[0]. My dp[0] would equal to cost[0] because I have no choice.
		dp[0] = cost[0]
		
		# My dp[1] would equal to cost[1]. I've wrote down "dp[1] = min(cost[0] + cost[1], cost[1])", 
		# but I found it is nonsense because in this problem, taking 2 costs will always higher than taking
		# 1 cost, which means cost[1] will always smaller than cost[0]+cost[1]. I mention this because I
		# want to let you know that you probably understand more about the relationships and the
		# problem itself when you are solving it.
        if len(cost) >= 2:
            dp[1] = cost[1]
        
		# Next, I try to write down my dp[2]. It was like:
		# dp[2] = cost[2] + min(dp[0], dp[1]) 
		# We found the pattern!!!!!!!!!!!!!
		# dp[i] would be "cost[i] + min(dp[i-2], dp[i-1])". The cost at the stairs plus the min of previous
		# one and two stairs (you could only come from the previous two stairs, and let's pick up the min
		# one.)
		
		# ==== 3. Once you found the pattern, let loop to help you!
		# We start from 2 because we already know the dp[0] and dp[1]. Also, the truth is: we are not
		# able to caculate dp[0] and dp[1]. However, from dp[2], we can caculate the results.
        for i in range(2, len(cost)):
            dp[i] = cost[i] + min(dp[i-1], dp[i-2])
        
		# ==== 4. Think again what you are trying to find in your dp array.
		# To finish the stairs journey in this problem, there are 2 ways to be the last step before we finish
		# the stairs. The last step might come from both last two stairs. So, we want to know the min of 
		# the costs of last 2 stairs from our dp array.
        return min(dp[-1], dp[-2])
        
#Same code - Without Comments
class Solution:
	def minCostClimbingStairs(self, cost: List[int]) -> int:
		if not cost:
			return 0
		dp = [0] * len(cost)
		dp[0] = cost[0]
		if len(cost) >= 2:
			dp[1] = cost[1]
		for i in range(2, len(cost)):
			dp[i] = cost[i] + min(dp[i-1], dp[i-2])
		return min(dp[-1], dp[-2])
        
#For any step(index) in stairs(cost), we can jump into that step(index) from step - 2 or step -1.
#Therefore, we accumulate costs
#return cost[-1] or cost[-2] because both steps(indexes) can complete climbing.
class Solution:
    def minCostClimbingStairs(self, cost):
        for i in range(2, len(cost)): 
            cost[i] += min(cost[i - 1],cost[i - 2])
        return min(cost[-1], cost[-2])

#https://leetcode.com/problems/min-cost-climbing-stairs/discuss/773865/A-Beginner's-Guide-on-DP-validation-and-How-to-come-up-with-a-Recursive-solution-Python-3
class Solution:
 def minCostClimbingStairs(self, cost: List[int]) -> int:
        # identify what is changing from subproblems to subproblems: 
        # n - step #n    dp(n) - min cost to get to step #n 
        def dp(n):  
            # write down base cases
            if n < 2: 
                return cost[n] 
            # write recursive function based on what you can change (climb one or two steps)
            return cost[n] + min(dp(n-1), dp(n-2))
		
		# since we want to know the min cost to get to the final step, we use the code below 
        length = len(cost) 
        return min(dp(length-1), dp(length-2))