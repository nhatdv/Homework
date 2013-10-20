//
//  ccpObjectMath.h
//  Day05
//
//  Created by MAC on 10/20/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#ifndef __Day05__ccpObjectMath__
#define __Day05__ccpObjectMath__

#endif
class clsCalculate
{
public:
    int add(int a, int b)
    {
        return a + b;
    };
    
    int minus(int a, int b)
    {
        return a - b;
        
    };
    
    int multi(int a, int b)
    {
        return a*b;
    }
    
    int divide(int a, int b)
    {
        return a/b;
    }
    // Tinh giai  thua
    int gt(int n)
    {
        int  i ;;
        long s ;
        s = 1;
        for (i = 2 ; i<= n ;i++)
            s = s * i;
        return  s;
    };
    
    
   
};




