class Solution:
    def closestTarget(self, words: List[str], target: str, startIndex: int) -> int:
        if target not in words:
            return -1
        res0 = float('inf')
        n = len(words)
        for x in range(n):
            if words[x] == target:
                dis = abs(startIndex - x)
                res = min(dis, n - dis)
                if res < res0:
                    res0 = res
        return res0

        