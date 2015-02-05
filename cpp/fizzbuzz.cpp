#include <iostream>
using namespace std;
 
bool is_multiple_of_3(int i);
bool is_multiple_of_5(int i);
bool is_multiple_of_both(int i);
int main(int max_num);

bool is_multiple_of_3(int i)
{
    return i % 3 == 0;
}

bool is_multiple_of_5(int i)
{
    return i % 5 == 0;
}

bool is_multiple_of_both(int i)
{
    return is_multiple_of_3(i) && is_multiple_of_5(i);
}

int main(int max_num)
{
    for (int i = 0; i <= max_num; ++i)
    {
        if (is_multiple_of_both(i))
        {
            cout << "FizzBuzz";
        }
        else if (is_multiple_of_3(i))
        {
            cout << "Fizz";
        }
        else if (is_multiple_of_5(i))
        {
            cout << "Buzz";
        }
        else
        {
            cout << i;
        }
        cout << "\n";
    }
    return 0;
}
