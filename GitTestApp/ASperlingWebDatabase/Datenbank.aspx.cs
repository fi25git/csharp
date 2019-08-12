using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ASperlingWebDatabase
{
    public partial class Datenbank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void dbVerbinden(object sender, EventArgs e)
        {
            DBConnect.connectDB(dbserver.Text, dbport.Text, dbname.Text, dbuser.Text, dbpwd.Text);
        }
    }
    
}