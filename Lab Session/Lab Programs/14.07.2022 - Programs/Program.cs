using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Write a Program to perform addition of all elements in Array
namespace ConsoleApplication7
{
    //MAin Class
    class Program
    {
        //Main Method
        static void Main(string[] args)
        {
            //Declaration of array
            int[] arr = new int[5];
            int i;
            int Sum = 0;
            Console.WriteLine("Addition of all elements in array:");
            Console.Write("");
            //Loop for add elements in array and add them
            for (i = 0; i < 5; i++)
            {
                Console.WriteLine("Enter the number");
                arr[i] = Int32.Parse(Console.ReadLine());
                Sum = Sum + arr[i];
            }
            //Printing Output
            Console.WriteLine("Addition of all elements stored in the Array:" + Sum);
            Console.ReadLine();
        }
    }
}