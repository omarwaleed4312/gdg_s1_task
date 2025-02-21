using System;

public class HelloWorld
{
    public static void Main(string[] args)
    {
        while (true)
        {
            Console.WriteLine("num1");
            if (!int.TryParse(Console.ReadLine(), out int num1))
            {
                Console.WriteLine("Invalid input. Please enter a valid number.");
                continue; 
            }

            Console.WriteLine("your operator");
            char operators = Convert.ToChar(Console.ReadLine());

            Console.WriteLine("num2");
            if (!int.TryParse(Console.ReadLine(), out int num2))
            {
                Console.WriteLine("Invalid input. Please enter a valid number.");
                continue;
            }

            int answer = 0;

            if (operators == '+')
            {
                answer = num1 + num2;
            }
            else if (operators == '-')
            {
                answer = num1 - num2;
            }
            else if (operators == '*')
            {
                answer = num1 * num2;
            }
            else if (operators == '/' && num2 == 0)
            {
                Console.WriteLine("Can't be divided by zero");
                continue; 
            }
            else if (operators == '/')
            {
                answer = num1 / num2;
            }
            else
            {
                Console.WriteLine("Invalid operator. Please use +, -, *, or /.");
                continue;
            }

            Console.WriteLine("Result: " + answer);

            
            Console.WriteLine("Do you want to continue? (yes/no)");
            string response = Console.ReadLine().ToLower();
            if (response != "yes")
            {
                Console.WriteLine("bye");
                break; 
            }
        }
    }
}
