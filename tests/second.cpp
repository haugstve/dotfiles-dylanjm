#include<iostream>
#include <boost/filesystem.hpp>
int main()
{
    boost::filesystem::path full_path( boost::filesystem::current_path() );
    if ( boost::filesystem::exists( "second.cpp" ) )
    {
        std::cout << "Found second.cpp file in " << full_path << std::endl;
    } else {
        std::cerr << "Argh!, Something not working" << std::endl;
        return 1;
    }
}
