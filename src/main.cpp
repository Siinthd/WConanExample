#include "ip_filter.h"
#include <range/v3/all.hpp>
#include <string_view>
#include <functional>
#include <algorithm>
using namespace ranges;

    auto first_is_one   = [](std::vector<int> vct) -> bool { return *vct.begin() == 1; };
    auto have_46_70_   = [](std::vector<int> vct) -> bool { auto it = vct.begin(); return *it == 46 && (*it++) == 70; };
    auto have_any_of_46  = [](std::vector<int> vct) -> bool { return ranges::any_of(vct,[](int i){return i == 46;});};

    void PrintVect(const pool& data)
{   
    ranges::for_each(data,[](std::vector<int> lclvct){
        int first[1];
        first[0] = 0;
        ranges::for_each(lclvct,[&first](int ival){
            if(first[0] == 1) std::cout<<".";
            *first = 1;
            std::cout<<ival;
        });
        std::cout<<std::endl;
    });

}

int main()
{
    //use split and << from .h
    try
    {
	pool ip_pool;

        for(std::string line; std::getline(std::cin, line);)
        {
            std::vector<std::string> v = split(line, '\t');
			auto row = split(v.at(0), '.');

			std::vector<int> ip_int;
			std::transform(row.begin(), row.end(), std::back_inserter(ip_int),
				[](const std::string& s){ return stoi(s); 
				});

            ip_pool.push_back(ip_int);
        }

        // TODO reverse lexicographically sort
		std::sort(ip_pool.begin(), ip_pool.end(), std::greater<std::vector<int>>());

        // 222.173.235.246
        // 222.130.177.64
        // 222.82.198.61
        // ...
        // 1.70.44.170
        // 1.29.168.152
        // 1.1.234.8

        // TODO filter by first byte and output
        auto vct_first_ones = ip_pool | ranges::view::filter(
                    first_is_one);

        PrintVect(vct_first_ones);

        /*alternative method
        ranges::for_each(ip_pool | ranges::view::filter([value=1](const auto& ip){ return ip[0] == value;}),
                [](const auto& ip){std::cout << ip;});
        
        ranges::for_each(ip_pool | ranges::view::filter([value=46](const auto& ip){ return ip[0] == value;}) | ranges::view::filter([value=70](const auto& ip){ return ip[1] == value;}),
                [](const auto& ip){std::cout << ip;});
        */
        // 1.231.69.33
        // 1.87.203.225
        // 1.70.44.170
        // 1.29.168.152
        // 1.1.234.8

        // TODO filter by first and second bytes and output
                auto vct_46_70 = ip_pool | ranges::view::filter(
                    have_46_70_);


        PrintVect(vct_46_70);
        // 46.70.225.39
        // 46.70.147.26
        // 46.70.113.73
        // 46.70.29.76

        // TODO filter by any byte and output

        auto vct_46 = ip_pool | ranges::view::filter(
                    have_any_of_46);
            PrintVect(vct_46);

        // 186.204.34.46
        // 186.46.222.194
        // 185.46.87.231
        // 185.46.86.132
        // 185.46.86.131
        // 185.46.86.131
        // 185.46.86.22
        // 185.46.85.204
        // 185.46.85.78
        // 68.46.218.208
        // 46.251.197.23
        // 46.223.254.56
        // 46.223.254.56
        // 46.182.19.219
        // 46.161.63.66
        // 46.161.61.51
        // 46.161.60.92
        // 46.161.60.35
        // 46.161.58.202
        // 46.161.56.241
        // 46.161.56.203
        // 46.161.56.174
        // 46.161.56.106
        // 46.161.56.106
        // 46.101.163.119
        // 46.101.127.145
        // 46.70.225.39
        // 46.70.147.26
        // 46.70.113.73
        // 46.70.29.76
        // 46.55.46.98
        // 46.49.43.85
        // 39.46.86.85
        // 5.189.203.46
    }
    catch(const std::exception &e)
    {
        std::cerr << e.what() << std::endl;
    }
}
