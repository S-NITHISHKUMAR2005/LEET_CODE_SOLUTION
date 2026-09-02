class Solution {
    public int largestAltitude(int[] gain) {
        int n = gain.length;
        int[] arr = new int[n+1];
        int maxi = 0;
        arr[0] = 0;
        for(int i=0;i<n;i++)
        {
            arr[i+1] = arr[i] + gain[i];
            maxi = Math.max(maxi,arr[i+1]);
        }
        
        return maxi;
    }
}