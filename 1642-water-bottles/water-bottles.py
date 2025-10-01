class Solution:
    def numWaterBottles(self, n: int, x: int) -> int:
        count = n
        empty = n
        while empty >= x:
            full = empty//x
            count += full
            empty = full + (empty%x)  
        return count

        