using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class mkuzia_DB : System.Web.UI.Page
    {
        static string host = "localhost";
        static string port = "3306";
        static string database = "filmarchiv";
        static string username = "root";
        static string password = "";
        static String connString = "Server=" + host + ";Database=" + database
             + ";port=" + port + ";User Id=" + username + ";password=" + password;
        MySqlConnection conn;
        MySqlDataAdapter adapter;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new MySqlConnection(connString);
            try
            {
                conn.Open();
                adapter = new MySqlDataAdapter("Select * From film", conn);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                GridView1.DataSource = dataTable;
                conn.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
        }
    }
}