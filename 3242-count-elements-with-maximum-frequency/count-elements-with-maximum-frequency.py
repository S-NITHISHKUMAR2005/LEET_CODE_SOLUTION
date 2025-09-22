class Solution:
    def maxFrequencyElements(self, nums: List[int]) -> int:
        x = {}
        for val in nums:
            x[val] = x.get(val,0)+1
        max_freq = max(x.values())     
        total = sum(freq for freq in x.values() if freq == max_freq)

        return total
        