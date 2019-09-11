using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace LandslideServers
{
    class AsyncSocketClientMsg
    {
        public string sendMeg;//需要向此客户端发送的消息
        public bool isSenCompleted;//是否发送完成
        public EndPoint remote; //客户端远程端口
        public const int DgramLength = 1024;//子数据报最大长度
        public int DgramNum;//发送的子数据报数量

        public AsyncSocketClientMsg(EndPoint re, string send)
        {
            sendMeg = send;
            isSenCompleted = false;
            remote = re;
            DgramNum = (send.Length % DgramLength == 0) ? (send.Length / DgramLength) : (send.Length / DgramLength + 1);
          
        }


    }
}
