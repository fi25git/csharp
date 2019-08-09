using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class klann_db : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string host = "localhost";
            int port = 3306;
            string database = "projekt_dbe";
            string username = "root";
            string password = "";
            String connString = "Server=" + host + ";Database=" + database
                + ";port=" + port + ";User=" + username + ";password=" + password ;

            MySqlConnection conn = new MySqlConnection(connString);

            conn.Open();
        }
    }
}