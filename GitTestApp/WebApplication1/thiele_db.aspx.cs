using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class thiele_db : System.Web.UI.Page
    {
        public MySqlConnection Connection = new MySqlConnection();

        private string db_server = "localhost";
        private string db_user = "root";
        private string db_name = "Scouting";

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}