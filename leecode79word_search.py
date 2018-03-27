"""Given a 2D board and a word, find if the word exists in the grid.

The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.

For example,
Given board =

[
  ['A','B','C','E'],
  ['S','F','C','S'],
  ['A','D','E','E']
]
word = "ABCCED", -> returns true,
word = "SEE", -> returns true,
word = "ABCB", -> returns false."""

class Solution(object):
    def exist(self, board, word):
        """
        :type board: List[List[str]]
        :type word: str
        :rtype: bool
        """
        self.h=len(board)
        self.w=len(board[0])
        for i in range(self.h):
        	for j in range (self.w):
        		if board[i][j] ==word[0]:
        			return true
        		board[i][j]=t
        return false
    def dfs(self, board,word,x,y,p):
    	dx,dy = [1,-1,0,0],[0,0,1,-1]
    	if (p==len(word)):
    		return true
    	for i in range(4):
    		nx, ny = x+dx[i],y+dy[i]
    		if 0<=nx and nx<self.h and 0<=ny and ny<=self.w and board[nx][ny] == word[p]:
    			t,board[nx][ny]=board[nx][ny],''
    			if self.dfs(board,word,nx,ny,p+1):
    				return true
    			board[nx][ny]=t
    	return False