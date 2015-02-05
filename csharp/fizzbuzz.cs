class Program
{
    static void Main()
    {
        for (uint i = 1; i <= 100; i++) {
            string s = null;
 
            if (is_multiple_of_3(i))
            {
                s = "Fizz";
            }
 
            if (is_multiple_of_5(i))
            {
                s += "Buzz";
            }
            
            if (s == null)
            {
                s = i.ToString();
            }
            
            System.Console.WriteLine(s);
        }
    }

    static bool is_multiple_of_3(int num)
    {
        return num % 3 == 0;
    }

    static bool is_multiple_of_5(int num)
    {
        return num % 5 == 0;
    }

}