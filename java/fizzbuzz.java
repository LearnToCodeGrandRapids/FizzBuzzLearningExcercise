public class FizzBuzz {                      // Everything in Java is a class
    public static void main(String[] args) {   // Every program must have main()
        int max_num = 0;
        if (args.length > 0) {
            try 
            {
                max_num = Integer.parseInt(args[0]);
            } 
            catch (NumberFormatException e) 
            {
                System.err.println("Argument" + args[0] + " must be an integer.");
                System.exit(1);
            }
        }
        System.out.println("Starting program");
        for(int i = 1; i <= max_num; i++) {
            if (is_multiple_of_5_and_3(i))
            {
                System.out.print("fizzbuzz");    
            }
            else if (is_multiple_of_3(i))
            {
                System.out.print("fizz");
            }
            else if (is_multiple_of_5(i))
            {
                System.out.print("buzz");  
            } 
            else
            { 
                System.out.print(i);
            }
            System.out.print("\n"); 
        }
        System.out.println();
    }

    private static boolean is_multiple_of_3(int num)
    {
        return num % 3 == 0;
    }
    private static boolean is_multiple_of_5(int num)
    {
        return num % 5 == 0;
    }
    private static boolean is_multiple_of_5_and_3(int num)
    {
        return is_multiple_of_3(num) && is_multiple_of_5(num);
    }
}