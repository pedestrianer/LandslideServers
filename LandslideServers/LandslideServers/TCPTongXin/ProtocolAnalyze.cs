using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using DB_SHANTIHUAPOSQL;
using System.Data;

namespace LandslideServers
{
    class ProtocolAnalyze
    {
        /// <summary>
        /// 存储客户端信息
        /// </summary>
        private static List<AsyncUserToken> clientMsg;
        private DBoperation.DBManager db;

        public ProtocolAnalyze()
        {
            clientMsg = new List<AsyncUserToken> { };
            db = new DBoperation.DBManager();
        }

        //解析客户端数据，返回需要向某个客户端发送某段数据
        public Dictionary<Socket, byte[]> TOrderAnalyze(int length, byte[] bitStream, Socket con)
        {
            Dictionary<Socket, byte[]> sendOrder = new Dictionary<Socket, byte[]> { };
            //List<byte[]> Data = new List<byte[]> { };

            List<byte[]> DataFrame = BitStreamAnalyze(length, bitStream);

            if (DataFrame.Count == 0)//比特流里没有符合协议的数据帧
            {
                return null;
            }
            foreach (var item in DataFrame)
            {              
                if (!isProtoFrame(item)) continue;
                //拆分数据部分
                byte[] message = new byte[item.Length - 7];
                Buffer.BlockCopy(item, 4, message, 0, item.Length - 7);
                switch (item[2])
                {
                    case 0x01:
                        {                          
                            SaveSensorData(message);//存储
                            break;
                        }
                    case 0x02:
                        {
                            LoginClient(con, "J");
                            SavaConcentrator(con, message);
                            byte[] retMessage = new byte[8];
                            retMessage[0] = 0xa5;
                            retMessage[1] = 0xa5;
                            retMessage[2] = 0x20;
                            retMessage[3] = 0x01;
                            retMessage[4] = 0x0D;
                            byte SendCheck = retMessage[2];
                            for (int i = 3; i < 5; i++)
                            {
                                SendCheck = Convert.ToByte(SendCheck ^ retMessage[i]);
                            }
                            retMessage[5] = SendCheck;
                            retMessage[6] = 0xbe;
                            retMessage[7] = 0xef;
                            lock (sendOrder) { sendOrder.Add(con, retMessage); }
                            break;
                        }
                    case 0x03:
                        {
                            string UserAuthority = VerifyLogin(message);
                            byte[] retMessage = new byte[8];
                            retMessage[0] = 0xa5;
                            retMessage[1] = 0xa5;
                            retMessage[2] = 0x30;
                            retMessage[3] = 0x01;
                            if(UserAuthority != null)
                            {
                                retMessage[4] = System.Text.Encoding.Default.GetBytes(UserAuthority)[0];
                                LoginClient(con, "K");
                            }
                            else
                            {
                                retMessage[4] = System.Text.Encoding.Default.GetBytes("0")[0];
                            }

                            byte SendCheck1 = retMessage[2];
                            for (int i = 3; i < 5; i++)
                            {
                                SendCheck1 = Convert.ToByte(SendCheck1 ^ retMessage[i]);
                            }
                            retMessage[5] = SendCheck1;
                            retMessage[6] = 0xbe;
                            retMessage[7] = 0xef;
                            lock (sendOrder) { sendOrder.Add(con, retMessage); }
                            break;
                        }
                    case 0x04:
                        {
                            LoginClient(con, "S");
                            byte[] retMessage = new byte[8];
                            retMessage[0] = 0xa5;
                            retMessage[1] = 0xa5;
                            retMessage[2] = 0x40;
                            retMessage[3] = 0x01;
                            retMessage[4] = System.Text.Encoding.Default.GetBytes("1")[0];
                            byte SendCheck2 = retMessage[2];
                            for (int i = 3; i < 5; i++)
                            {
                                SendCheck2 = Convert.ToByte(SendCheck2 ^ retMessage[i]);
                            }
                            retMessage[5] = SendCheck2;
                            retMessage[6] = 0xbe;
                            retMessage[7] = 0xef;
                            lock (sendOrder) { sendOrder.Add(con, retMessage); }
                            break;
                        }
                    case 0xa5:
                        //算法端向客户端发——通过服务器告知所有客户端有报警数据
                        {
                            foreach (var list in clientMsg)
                            {
                                if (list.ClientType == "K")
                                {
                                    lock (sendOrder) { sendOrder.Add(list.SocketArgs, bitStream); }
                                }
                            }

                            break;
                        }
                       
                    case 0xf2:

                    case 0xf3:

                    case 0xf4:

                    case 0xf5:

                    case 0x2f:

                    case 0x3f:

                    case 0x4f:

                    case 0x5f:
                        {
                            string destIPAddress = bitStream[4].ToString() + "." + bitStream[5].ToString() + "." + bitStream[6].ToString() + "." + bitStream[7].ToString();
                            foreach (var list in clientMsg)
                            {
                                if (list.IPAddress.ToString() == destIPAddress)
                                {
                                    lock (sendOrder) { sendOrder.Add(list.SocketArgs, bitStream); }
                                }
                            }
                        }
                        break;

                    default:
                        break;
                }
            }
            return sendOrder;
        }

        private List<byte[]> BitStreamAnalyze(int length, byte[] BitStream)
        {
            //从一组比特流中解析出所有符合帧头帧尾格式的数据帧

            List<byte[]> dataFrame = new List<byte[]> { };
            int key = 1;
            int header, end;
            for (int i = 0; i < length; i++)
            {
                if ((BitStream[i] == 0xa5) && (BitStream[i + 1] == 0xa5))
                {
                    //找到第一个帧头索引后，查找离它最近的帧尾索引，在这之前，若再次找到帧头，替换为新的帧头索引
                    header = i;
                    for (int j = i + 2; j < length; j++)
                    {
                        if ((BitStream[j] == 0xbe) && (BitStream[j + 1] == 0xef))
                        {
                            end = j;
                            i = j + 1;

                            // int[] frame={header,end};
                            byte[] data = new byte[end - header + 2];
                            Buffer.BlockCopy(BitStream, header, data, 0, end - header + 2);
                            dataFrame.Add(data);

                            break;
                        }
                        if ((BitStream[j] == 0xa5) && (BitStream[j + 1] == 0xa5))
                        {
                            header = j;
                        }
                    }
                }

            }

            return dataFrame;
        }
      
        //收到的数据帧是否为协议帧
        private bool isProtoFrame(byte[] dataFrame)
        {
            int header = 0;//取出帧头和帧尾
            int end = Array.IndexOf(dataFrame,(byte)0xbe);

            if (end - header < 5)//数据帧里不存在数据段
            {
                return false;
            }

            byte check = dataFrame[header + 2];
            for (int i = header + 3; i < end - 1; i++)//类型，数据长度，数据所有字节异或
            {
                //获取校验码
                check = (byte)(check ^ dataFrame[i]);
            }
            if (check == dataFrame[end - 1]) return true;
            else return false;
        }

        //添加合法客户端
        private void LoginClient(Socket con, string logo)
        {
            AsyncUserToken userToken = new AsyncUserToken();
            userToken.SocketArgs = con;
            userToken.Remote = con.RemoteEndPoint;
            userToken.IPAddress = ((IPEndPoint)con.RemoteEndPoint).Address;
            userToken.ClientType = logo;
            lock (clientMsg) { clientMsg.Add(userToken); }
        }

        private void SaveSensorData(byte[] message)
        {
            //下位机数据存储
            int number = message[4];
            SensorData SD = new SensorData();
            for (int i = 0; i < number; i++)
            {
                SD.SensorData_CCID = (message[0] * 256 + message[1]).ToString();
                SD.SensorData_ID = (message[2] * 256 + message[3]).ToString();
                SD.SensorData_Time = DateTime.Now;
                int datatype = message[5 + 3 * i];
                SD.SensorData_Kind = datatype.ToString();
                if (datatype == 2)
                {
                    if (message[6 + 3 * i] > 127)
                    {
                        SD.SensorData_Data = "-" + (((message[6 + 3 * i] - 128) * 256 + message[7 + 3 * i]) / 10.0).ToString();
                    }
                    else
                    {
                        SD.SensorData_Data = ((message[6 + 3 * i] * 256 + message[7 + 3 * i]) / 10.0).ToString();
                    }
                }
                else
                {
                    SD.SensorData_Data = ((message[6 + 3 * i] * 256 + message[7 + 3 * i]) / 100.0).ToString();
                }
                //SensorDataServer SaveData = new SensorDataServer();
                
                string sql = string.Format("insert into sensordata values('{0}','{1}','{2}','{3}','{4}')",SD.SensorData_ID,SD.SensorData_CCID,SD.SensorData_Data,SD.SensorData_Time,SD.SensorData_Kind);
                if (!db.Insert(sql))
                db.Insert(sql);
               
                
                
            }
        }
        //存储集中器信息
        private void SavaConcentrator(Socket con, byte[] message)
        {
            //保存集中器IP、编号
            string ConcerIP = ((IPEndPoint)(con.RemoteEndPoint)).Address.ToString();
            Concentrator concer = new Concentrator();
            concer.Unit_Id = (message[0] * 256 + message[1]).ToString();
            concer.Unit_IpAddress = ConcerIP;
            concer.Unit_Status = "1";
            concer.Unit_Latitude = "";
            concer.Unit_Longitude = "";

            ConcentratorServer SaveConcen = new ConcentratorServer();

            string sql = "select * from concentrator where UnitID = " + concer.Unit_Id;

            if (db.Select(sql)!=null)
            {
                string sqlSave = string.Format("insert into sensordata values('{0}','{1}','{2}','{3}','{4}')", concer.Unit_Id, concer.Unit_IpAddress, concer.Unit_Status, concer.Unit_Longitude, concer.Unit_Latitude);
                db.Insert(sqlSave);
            }
        }

        //验证客户端登录信息
        private string VerifyLogin(byte[] message)
        {
            byte[] name = new byte[message[0]];
            byte[] password = new byte[message[1]];
            for (int i = 2; i < message[0] + 2; i++)
            {
                name[i - 2] = message[i];
            }

            for (int k = message[0] + 2; k < message[1] + message[0] + 2; k++)
            {
                password[k - message[0] - 2] = message[k];
            }

            System.Text.ASCIIEncoding asciiEncoding = new System.Text.ASCIIEncoding();

            string UserName = asciiEncoding.GetString(name);
            string UserPassword = asciiEncoding.GetString(password);

            UserServer user = new UserServer();
            string sqlSelct = "select UserAuthority from user where UserName='" + UserName + "' and UserPassWord= '" + UserPassword + "'";
            
            string UserAuthority = null;
            DataTable dt = db.Select(sqlSelct);
            if(dt!=null)
            {
                UserAuthority = dt.Rows[0][0].ToString();   
            }
            return UserAuthority;
             
        }

        public static List<AsyncUserToken> GetClientMeg()
        {
            return clientMsg;
        }
    }
}

