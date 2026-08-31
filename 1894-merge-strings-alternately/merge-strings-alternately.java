class Solution {
    public String mergeAlternately(String x, String y) 
    {
        int n1 = x.length();
        int n2 = y.length();
        char[] arr = new char[n1+n2];
        int i=0,j=0,t=0;
        while(i < n1 || j < n2)
        {
            if(i<n1){
                arr[t] = x.charAt(i);
                t++;
                i++;
            }
            if(j<n2){
                arr[t] = y.charAt(j);
                t++;
                j++;
            }
        }
        return new String(arr);
    }
}