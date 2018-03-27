#1. Two Sum
"""Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1]"""

#check target x
# dict.get(key, default=None) 
# eg dict={'name':'zara', 'Age': 27} dict.get('age') will return 27
"""class Solution(object):
    def twoSum(self, num , target):       
        #type nums: List[int]
        #type target: int
        #rtype: List[int]       
        dict={}

        for i in range(len(num)):
        	if dict.get(target-num[i],None)==None:
        		dict [num[i]]=i
        	else:
        		return (dict[target-num[i]], i)"""

class Solution:
    def twoSum(self, num, target):
        d = {}
        for i in range(len(num)):
            key = target - num[i]
            if key in d:
                return [d[key], i]
            else:
                d[num[i]]=i        
if __name__ == '__main__':
    lt = [14, 3, 6, 11, 15]
    outcome = Solution()
    print outcome.twoSum(lt,9)



