#include<iostream>
#include<boost/any.hpp>
int main()
{
    boost::any a(5);
    a = 1.61803;
    std::cout << boost::any_cast<double>(a) << std::endl;
}
