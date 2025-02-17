using System;

public class HelloWorld
{
    public static void Main(string[] args)
    {
        Console.WriteLine("num1");
        int num1 =Convert.ToInt32(Console.ReadLine ()) ;

        Console.WriteLine("your operator");
        char operators =Convert.ToChar(Console.ReadLine ()) ;

        Console.WriteLine("num2");
        int num2 =Convert.ToInt32(Console.ReadLine ());

        int answer = 0;

        if (operators == '+')
        {
            answer = num1 + num2;

        }

        else if (operators == '-')
        {
            answer = num1 - num2;

        }
                else if (operators == '')
        {
            answer = num1 num2;

        }
                else if (operators == '/' && num2 == 0)
        {
            Console.WriteLine("Cant be divided by zero");

        }
                else if (operators == '/')
        {
            answer = num1 / num2;

        }
        Console.WriteLine(answer);
    }
}
