﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;
using HtmlAgilityPack;
using MongoDB.Bson;
using MongoDB.Driver;
using System.Data.OleDb;

namespace web_helper
{

    public partial class frm_match_down_excel : Form
    {
        public DataTable table = new DataTable();

        public frm_match_down_excel()
        {
            InitializeComponent();
        }

        private void btn_down_excel_Click(object sender, EventArgs e)
        {
            WebClient web_client = new WebClient(); 
            HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
            string html = System.Text.Encoding.GetEncoding("GBK").GetString(web_client.DownloadData(@"http://trade.500.com/jczq/"));
            doc.LoadHtml(html);

            HtmlNodeCollection nodes_all = doc.DocumentNode.SelectNodes(@"//*"); 
            foreach (HtmlNode node in nodes_all)
            {
                if (node.Attributes.Contains("fid") && node.Attributes.Contains("pendtime") &&
                    node.Attributes.Contains("homesxname") && node.Attributes.Contains("awaysxname"))
                {
                    string fid = node.Attributes["fid"].Value.ToString();
                    string start_time = node.Attributes["pendtime"].Value.ToString();
                    string lg = node.Attributes["lg"].Value.ToString();
                    string host = node.Attributes["homesxname"].Value.ToString();
                    string client = node.Attributes["awaysxname"].Value.ToString();
                    down_excel(lg,fid, start_time,host, client);
                    table=get_table_from_excel(@"c:\data\" + fid + ".xls", 2);
                    read_to_db(lg,start_time, host, client);
                    this.txt_result.Text += lg+"  "+fid + "  " + start_time + "  " + host + "  " + client+Environment.NewLine;
                    Application.DoEvents();
                }
            }
        }
        public void down_excel(string lg,string id, string start_time, string host, string client)
        {
            Request request = HttpSocketHelper.get_request_500_excel(id);
            Response response = HttpSocketHelper.get_response(request);
            HttpSocketHelper.save_file_from_response(response, @"c:\data\" + id + ".xls"); 
        }
        public DataTable get_table_from_excel(string filename, int sheet)
        {
            DataSet ds;


            string str_con = "Provider=Microsoft.Jet.OLEDB.4.0;" +
                            "Extended Properties=Excel 8.0;" +
                            "data source=" + filename;
            OleDbConnection con = new OleDbConnection(str_con);


            con.Open();
            DataTable dt_schema = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
            string sql = " SELECT * FROM [" + dt_schema.Rows[sheet - 1][2].ToString() + "]";
            OleDbDataAdapter adapter = new OleDbDataAdapter(sql, con);
            ds = new DataSet();
            adapter.Fill(ds);
            con.Close();

            return ds.Tables[0];
        }
        public void read_to_db(string lg,string start_time, string host, string client)
        {
            string sql = "";
            DataTable dt_temp = table;
            for (int i = 5; i < dt_temp.Rows.Count; i++)
            { 
                string company = dt_temp.Rows[i][0].ToString();
                string timespan = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                string profit_win = (string.IsNullOrEmpty(dt_temp.Rows[i][1].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][1].ToString()).ToString("f2");
                string profit_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][2].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][2].ToString()).ToString("f2");
                string profit_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][3].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][3].ToString()).ToString("f2");
                string persent_win = (string.IsNullOrEmpty(dt_temp.Rows[i][4].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][4].ToString()).ToString("f2");
                string persent_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][5].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][5].ToString()).ToString("f2");
                string persent_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][6].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][6].ToString()).ToString("f2");
                string persent_return = (string.IsNullOrEmpty(dt_temp.Rows[i][7].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][7].ToString()).ToString("f2");
                string kelly_win = (string.IsNullOrEmpty(dt_temp.Rows[i][8].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][8].ToString()).ToString("f2");
                string kelly_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][9].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][9].ToString()).ToString("f2");
                string kelly_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][10].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][10].ToString()).ToString("f2");

                string start_profit_win = (string.IsNullOrEmpty(dt_temp.Rows[i][11].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][11].ToString()).ToString("f2");
                string start_profit_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][12].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][12].ToString()).ToString("f2");
                string start_profit_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][13].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][13].ToString()).ToString("f2");
                string start_persent_win = (string.IsNullOrEmpty(dt_temp.Rows[i][14].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][14].ToString()).ToString("f2");
                string start_persent_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][15].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][15].ToString()).ToString("f2");
                string start_persent_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][16].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][16].ToString()).ToString("f2");
                string start_persent_return = (string.IsNullOrEmpty(dt_temp.Rows[i][17].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][17].ToString()).ToString("f2");
                string start_kelly_win = (string.IsNullOrEmpty(dt_temp.Rows[i][18].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][18].ToString()).ToString("f2");
                string start_kelly_draw = (string.IsNullOrEmpty(dt_temp.Rows[i][19].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][19].ToString()).ToString("f2");
                string start_kelly_lose = (string.IsNullOrEmpty(dt_temp.Rows[i][20].ToString())) ? "" : Convert.ToDouble(dt_temp.Rows[i][20].ToString()).ToString("f2");


                //insert into table europe
                sql = " insert into europe " +
                      " (start_time,host,client,company,timespan," +
                      "  profit_win,profit_draw,profit_lose,persent_win,persent_draw,persent_lose,persent_return,kelly_win,kelly_draw,kelly_lose," +
                      "  start_profit_win,start_profit_draw,start_profit_lose,start_persent_win,start_persent_draw,start_persent_lose," +
                      "  start_persent_return,start_kelly_win,start_kelly_draw,start_kelly_lose,type)" +
                      "  values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}'," +
                      "          '{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}')";
                sql = string.Format(sql, start_time, host, client, company, timespan,
                                 profit_win, profit_lose, profit_lose, persent_win, persent_draw, persent_lose, persent_return, kelly_win, kelly_draw, kelly_win,
                                 start_profit_win, start_profit_draw, start_profit_lose, start_persent_win, start_persent_draw, start_persent_lose,
                                 start_persent_return, start_kelly_win, start_kelly_draw, start_kelly_lose,lg);
                SQLServerHelper.exe_sql(sql);


                //insert into table europe_new
                sql = "delete  from europe_new where start_time='{0}' and host='{1}' and client='{2}' and company='{3}'";
                sql = string.Format(sql, start_time, host, client, company);
                SQLServerHelper.exe_sql(sql);
                sql = " insert into europe_new " +
                     " (start_time,host,client,company,timespan," +
                     "  profit_win,profit_draw,profit_lose,persent_win,persent_draw,persent_lose,persent_return,kelly_win,kelly_draw,kelly_lose," +
                     "  start_profit_win,start_profit_draw,start_profit_lose,start_persent_win,start_persent_draw,start_persent_lose," +
                     "  start_persent_return,start_kelly_win,start_kelly_draw,start_kelly_lose,type)" +
                     "  values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}'," +
                     "          '{16}','{17}','{18}','{19}','{20}','{21}','{22}','{23}','{24}','{25}')";
                sql = string.Format(sql, start_time, host, client, company, timespan,
                                 profit_win, profit_lose, profit_lose, persent_win, persent_draw, persent_lose, persent_return, kelly_win, kelly_draw, kelly_win,
                                 start_profit_win, start_profit_draw, start_profit_lose, start_persent_win, start_persent_draw, start_persent_lose,
                                 start_persent_return, start_kelly_win, start_kelly_draw, start_kelly_lose,lg);
                SQLServerHelper.exe_sql(sql);
            }
        }
    }
}
