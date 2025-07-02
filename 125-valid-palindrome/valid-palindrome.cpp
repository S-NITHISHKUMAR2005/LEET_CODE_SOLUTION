class Solution 
{
public:
    bool isPalindrome(string s) 
    {
        string res="";
        for(char x:s)
        {
            if(x>='0' && x<='9') res+=x;
            if(x<='z' && x>='a') res+=x;
            if(x>='A' && x<='Z') res+=(x+('a'-'A'));
        }  
        int n = res.size();
        cout << res;
        for(int i=0;i<n/2;i++)
        {
            if(res[i]!=res[n-1-i]) return false;
        }
        return true;
    }
};