using System;
using System.Runtime.InteropServices;
using System.Text;

namespace CSharpAndCPPDLL
{
    class Program
    {
        [DllImport("example.so")]
        private static extern UInt32 GetAPIMajorVersion();

        static void Main(string[] args)
        {
            Console.WriteLine("Example program");
            Console.Write("GetAPIMajorVersion: ");
            Console.WriteLine(GetAPIMajorVersion().ToString());
        }
    }
}
