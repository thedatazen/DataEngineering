'''

Given a list of words and two words word1 and word2, return the shortest distance between these two words in the list.

Example:
Assume that words = ["practice", "makes", "perfect", "coding", "makes"].

Input: word1 = “coding”, word2 = “practice”
Output: 3
Input: word1 = "makes", word2 = "coding"
Output: 1
Note:
You may assume that word1 does not equal to word2, and word1 and word2 are both in the list.

'''

class Solution:
    def shortestDistance(self, words, word1, word2):
        ans = len(words)
        current_word, current_index = None, 0
        for index, word in enumerate(words):
            if word != word1 and word != word2: continue
            if current_word and word != current_word:
                ans = min(ans, index - current_index)
            current_word, current_index = word, index
        return ans

