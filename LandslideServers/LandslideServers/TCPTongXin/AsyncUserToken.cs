using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using System.Net;

namespace LandslideServers
{
    /// <summary>
    /// 存储客户端信息
    /// </summary>
    class AsyncUserToken
    { 
        /// <summary>
        /// 客户端IP地址
        /// </summary>
        public IPAddress IPAddress { get; set; }

        /// <summary>
        /// 远程地址
        /// </summary>
        public EndPoint Remote { get; set; }

        /// <summary>
        /// 套接字SOCKET
        /// </summary>
        public Socket SocketArgs { get; set; }   

        /// <summary>
        /// 数据缓存区
        /// </summary>
        public List<byte> Buffer { get; set; }

        /// <summary>
        /// 连接客户端类别
        /// </summary>
        public string ClientType { get; set; }

        public AsyncUserToken()
        {
            this.Buffer = new List<byte>();
        }
    }
}  
