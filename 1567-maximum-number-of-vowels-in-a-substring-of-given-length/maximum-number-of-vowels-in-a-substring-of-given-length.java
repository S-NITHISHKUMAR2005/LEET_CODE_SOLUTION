class Solution {
    public int maxVowels(String s, int k) 
    {
        int maxi = 0, count = 0;
        StringBuilder arr = new StringBuilder(s);
        int n = s.length();
        for(int i=0;i<k;i++)
        {
            if(isvowel(arr.charAt(i))) count++;
        }
        maxi = count;
        for(int i=k; i<n;i++)
        {
            if(isvowel(arr.charAt(i))) count++;
            if(isvowel(arr.charAt(i-k))) count--;
            maxi = Math.max(maxi, count);
        }
        return maxi; 
    }
    private boolean isvowel(char y)
    {
        return y=='a' || y=='e' || y=='i' || y=='o' || y=='u';
    }
}