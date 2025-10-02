class Solution {
public:
    int maxBottlesDrunk(int b, int e) 
    {
       int bd = b;
       int empty = b;
       int ex = e;
       while(empty >= ex)
       {
            empty -= ex;
            ex++;
            bd++;
            empty++;
       }
       return bd;
    }
};
