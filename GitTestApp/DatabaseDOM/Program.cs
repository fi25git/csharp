using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DatabaseDOM
{
    class Program
    {
        static void Main(string[] args)
        {
            string host = "localhost";
            int port = 3306;
            string database = "test";
            string username = "root";
            string password = "";
            String connString = "Server=" + host + ";Database=" + database
                + ";port=" + port + ";User Id=" + username + ";password=" + password;

            MySqlConnection conn = new MySqlConnection(connString);
            conn.Open();



            DataSet set = new DataSet();
            //den Adapter selbst konfigurieren
            MySqlDataAdapter adapter = new MySqlDataAdapter("SELECT * FROM film",conn);

            adapter.Fill(set);

            //im Objektbaum navigieren und Daten ausgeben
        }
    }
}
