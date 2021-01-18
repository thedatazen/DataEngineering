'''

Given a list of strings words representing an English Dictionary, find the longest word in words that can be built one character at a time by other words in words. If there is more than one possible answer, return the longest word with the smallest lexicographical order.

If there is no answer, return the empty string.
Example 1:
Input: 
words = ["w","wo","wor","worl", "world"]
Output: "world"
Explanation: 
The word "world" can be built one character at a time by "w", "wo", "wor", and "worl".

Example 2:
Input: 
words = ["a", "banana", "app", "appl", "ap", "apply", "apple"]
Output: "apple"
Explanation: 
Both "apply" and "apple" can be built from other words in the dictionary. However, "apple" is lexicographically smaller than "apply".

Note:

All the strings in the input will only contain lowercase letters.
The length of words will be in the range [1, 1000].
The length of words[i] will be in the range [1, 30].

'''

#Firstly sort the words to ensure that we iterate in a lexicographical fashion. Also, maintain a set of seen words to check whether there is a "path" to the current word we are iterating through. We can lengthen the path when we see that there is a previous word that meets the criteria. Lastly, in every iteration where there is a path lengthening, check to see if we can update the longest_word.

class Solution(object):
    def longestWord(self, words):
        words.sort()
        words_set, longest_word = set(['']), ''
        for word in words:
            if word[:-1] in words_set:
                words_set.add(word)
                if len(word) > len(longest_word):
                    longest_word = word
        return longest_word

class TrieNode(object):
    def __init__(self):
        self.children=collections.defaultdict(TrieNode)
        self.isEnd=False
        self.word =''

class Solution(object):
    def longestWord(self, words):
        valid = set([""])       
        for word in sorted(words, key=lambda x: len(x)):
           if word[:-1] in valid:
                valid.add(word)								
        return max(sorted(valid), key=lambda x: len(x))
        
#Trie + BFS
class Trie(object):
    def __init__(self):
        self.root=TrieNode()
        
    def insert(self, word):
        node=self.root
        for c in word:
            node =node.children[c]
        node.isEnd=True
        node.word=word
    
    def bfs(self):
        q=collections.deque([self.root])
        res=''
        while q:
            cur=q.popleft()
            for n in cur.children.values():
                if n.isEnd:
                    q.append(n)
                    if len(n.word)>len(res) or n.word<res:
                        res=n.word
        return res 
    
class Solution(object):
    def longestWord(self, words):
        trie = Trie()
        for w in words: trie.insert(w)
        return trie.bfs()
        
#Trie + DFS
class TrieNode:
    def __init__(self):
        self.children = {}
        self.end = False
        
class Trie:
    def __init__(self):
        self.root = TrieNode()
    
    def insert(self, word):
        cur = self.root
        for c in word:
            if c not in cur.children:
                cur.children[c] = TrieNode()
            cur = cur.children[c]
        cur.end = True
    
    def longest_word(self):
        def helper(node, partial_res):
            res = partial_res
            for c, child in node.children.items():
                if child.end:
                    pot = helper(child, partial_res + c)
                    if len(pot) > len(res):
                        res = pot
                    elif len(pot) == len(res) and pot < res:
                        res = pot
            return res
        return helper(self.root, '')

class Solution:
    def longestWord(self, words):
        """
        :type words: List[str]
        :rtype: str
        """
        T = Trie()
        for word in words:
            T.insert(word)
        return T.longest_word()