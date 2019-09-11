using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using MySql;
using System.Data;

namespace DBoperation
{
    class DataAnalyze
    {
        private string sqlStr;
        private string sqlOrder;

        public DataAnalyze()
        {
            sqlOrder = null;
            sqlStr = null;
        }

        public string GetSqlOrder()
        {
            return sqlOrder;
        }
        
        public string DataAnalyzeResult(string message)
        {
            message = message.Trim();
            DBManager dbMana = new DBManager();
            string analyResult = "";
            GetsqlOrder(message);

            if(sqlOrder == null)
            {
                analyResult = "SOH#00#NO#EOT";
            }
            else
            {
                switch(sqlOrder)
                {
                    case "01":
                        {
                            if (dbMana.Insert(sqlStr))
                            {
                                analyResult = "SOH#10#OK#EOT";
                            }
                            else
                            {
                                analyResult = "SOH#10#NO#EOT";
                            }
                            break;
                        }
                    case "02":
                        {
                            if (dbMana.Delete(sqlStr))
                            {
                                analyResult = "SOH#20#OK#EOT";
                            }
                            else
                            {
                                analyResult = "SOH#20#NO#EOT";
                            }
                            break;
                        }
                    case "03":
                        {
                            DataTable dt = dbMana.Select(sqlStr);
                            if (dt != null)
                            {
                                string columncount = dt.Columns.Count.ToString();
                                foreach (DataRow row in dt.Rows)//遍历查询信息
                                {
                                    foreach (DataColumn column in dt.Columns)
                                    {
                                        analyResult = analyResult + column.ColumnName + "%" + row[column].ToString() + "%";
                                    }
                                }
                                analyResult = "SOH#30#" + analyResult + columncount + "#EOT";
                            }
                            else
                            {
                                analyResult = "SOH#30#NO#EOT";
                            }
                            break;
                        }
                    case "04":
                        {
                            if (dbMana.Update(sqlStr))
                            {
                                analyResult = "SOH#40#OK#EOT";
                            }
                            else
                            {
                                analyResult = "SOH#40#NO#EOT";
                            }
                            break;
                        }
                    default:
                        break;
                }
            }

            return analyResult;
        }
        //解析数据操作类型和sql指令
        private void GetsqlOrder(string message)
        {
            //获取客户端的sql指令及操作类型
            string[] MessageSpilt = message.Split('#');
            if (MessageSpilt.Length == 4)//验证客户端数据是否符合协议
            {
                if ((MessageSpilt[0] == "SOH") && (MessageSpilt[3] == "EOT"))
                {
                    sqlStr = MessageSpilt[2];
                    sqlOrder = MessageSpilt[1];

                }

            }
        }

        
    }
}
