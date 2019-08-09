using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Web;
using MySql.Data.MySqlClient;

namespace ASperlingWebDatabase
{
    public class DBConnect
    {
        private static MySqlConnection conn = null;

        public static void connectDB()
        {
            string host = "localhost";
            int port = 3306;
            string database = "simplefilm";
            string username = "root";
            string password = "";
            String connString = "Server=" + host + ";Database=" + database
                + ";port=" + port + ";User Id=" + username + ";password=" + password;

            conn = new MySqlConnection(connString);
        } // Ende connectDB()

        public static List<string> DBTables()
        {
            List<string> tables = new List<string>();
            
            try
            {
                conn.Open();
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "SHOW TABLES;";
                DbDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            tables.Add(reader.GetValue(i).ToString());
                        }            
                    }
                }
                conn.Close();
            }
            catch (Exception ex)
            {

                throw;
            }
            
            return tables;
        } // Ende DBTables()

        public static StringBuilder showTable(string tabelle)
        {
            StringBuilder tableStringBuilder = new StringBuilder();
            
            try
            {
                conn.Open();
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "SELECT * FROM " + tabelle + ";";
                DbDataReader reader = cmd.ExecuteReader();
                
                if (reader.HasRows)
                {
                    tableStringBuilder.Append("<table>");
                    while (reader.Read())
                    {
                        tableStringBuilder.Append("<tr>");
                        string id = reader.GetString(0);
                        string filmtitel = reader.GetString(1);
                        string originaltitel = reader.GetString(2);
                        string fsk = reader.GetString(3);
                        string dauer = reader.GetString(4);
                        string jahr = reader.GetString(5);
                        tableStringBuilder.Append("<td>").Append(id).Append("</td>");
                        tableStringBuilder.Append("<td>").Append(filmtitel).Append("</td>");
                        tableStringBuilder.Append("<td>").Append(originaltitel).Append("</td>");
                        tableStringBuilder.Append("<td>").Append(fsk).Append("</td>");
                        tableStringBuilder.Append("<td>").Append(dauer).Append("</td>");
                        tableStringBuilder.Append("<td>").Append(jahr).Append("</td>");
                        //string[] row = { id, filmtitel, originaltitel, fsk, dauer, jahr };
                        tableStringBuilder.Append("</tr>");
                    }
                    tableStringBuilder.Append("</table>");
                }

                conn.Close();
            }
            catch (Exception ex)
            {

                throw;
            }
            return tableStringBuilder;
        }

        public static StringBuilder showTabelle(string tabelle)
        {
            StringBuilder tableStringBuilder = new StringBuilder();
            
            try
            {
                conn.Open();
                tableStringBuilder.Append("<table>");

                DataSet set = new DataSet();
                //den Adapter selbst konfigurieren
                MySqlDataAdapter adapter = new MySqlDataAdapter("SELECT * FROM " + tabelle, conn);
                adapter.Fill(set,tabelle);
                //Console.WriteLine(set.Tables.Count);
                //Console.WriteLine(set.Tables[0].TableName);

                //foreach (DataColumn column in set.Tables[tabelle].Columns)
                //{

                //}
                
                // Table-Header
                tableStringBuilder.Append("<tr>");
                for (int i = 0; i < set.Tables[tabelle].Columns.Count; i++)
                {
                    tableStringBuilder.Append("<th>").Append(set.Tables[tabelle].Columns[i].ToString()).Append("</th>");
                    foreach (DataRow row in set.Tables[tabelle].Rows)
                    {
                        tableStringBuilder.Append("<th>").Append(set.Tables[tabelle].Columns[i].ToString()).Append("</th>");
                        //Console.WriteLine("{0}; FSK: {1}; Dauer: {2}; Jahr: {3}", row[1], row[3], row[4], row[5]);
                    }
                }
                tableStringBuilder.Append("</tr>");
                
                foreach (DataRow row in set.Tables[tabelle].Rows)
                {
                    //Console.WriteLine("{0}; FSK: {1}; Dauer: {2}; Jahr: {3}", row[1], row[3], row[4], row[5]);
                }
                tableStringBuilder.Append(set.Tables[tabelle].Columns.Count);

                tableStringBuilder.Append("</table>");
                conn.Close();
            }
            catch (Exception ex)
            {

                throw;
            }
            return tableStringBuilder;
        }
        
    }
}