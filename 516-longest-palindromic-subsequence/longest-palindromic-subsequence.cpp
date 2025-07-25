class Solution {
public:
    int longestPalindromeSubseq(string s) 
    {
        int n = s.size();
        string s1 = s;
        reverse(s1.begin(),s1.end());
        vector<vector<int>> dp(n+1,vector<int>(n+1,0));
        for(int i=1;i<=n;i++)
        {
            for(int j=1;j<=n;j++)
            {
                if(s[i-1]==s1[j-1]) dp[i][j] = dp[i-1][j-1]+1;
                else dp[i][j] = max(dp[i-1][j],dp[i][j-1]);
            }
        }
        string res="";
        int i=n,j=n;
        while(i>0 & j>0)
        {
            if(s[i-1]==s1[j-1]){
                res+=s[i-1];
                i--;
                j--;
            }
            else if(dp[i-1][j]>dp[i][j-1]) i--;
            else j--;
        }
        cout << res;
        return dp[n][n];
    }
};