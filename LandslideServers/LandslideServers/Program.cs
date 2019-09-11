using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LandslideServers
{
    class Program
    {
        static void Main(string[] args)
        {
            IOCPServer server = new IOCPServer(10000, 1024);
            server.Start();
            Console.WriteLine("Listen...(Press any key to terminate the server process)");

            AsyncSocketUDPServer dataServer = new AsyncSocketUDPServer(20000);
            dataServer.Start();
            //Console.WriteLine("Listen...(Press any key to terminate the server process)");
            System.Console.ReadLine();
        }
    }
}
