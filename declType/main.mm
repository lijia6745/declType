//
//  main.c
//  declType
//
//  Created by 李佳 on 14-4-15.
//  Copyright (c) 2014年 LiJia. All rights reserved.
//
#include <iostream>
#include <vector>

template<typename T1, typename T2>
void TestFunc(std::vector<T1> vec1, std::vector<T2> vec2)
{
    typedef  decltype(vec1[0] * vec2[0]) tempType;
    //用于推断一个表达式的类型
    tempType value = vec1[0] * vec2[0];
    std::cout << value << std::endl;
    //直接可以用定义
    auto value2 = vec1[0] * vec2[0];
    std::cout << value2 << std::endl;
}
int main(int argc, const char * argv[])
{
    std::vector<int> iVec;
    iVec.push_back(1);
    std::vector<float> fVec;
    fVec.push_back(2.0f);
    TestFunc(iVec, fVec);
    return 0;
}

