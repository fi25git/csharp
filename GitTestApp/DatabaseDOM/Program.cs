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
            DbConnection c = new MySqlConnection("server=localhost; port=3306; user=root; password=; database=projekt_dbe");
            DataSet set = new DataSet();
            //den Adapter selbst konfigurieren
            MySqlDataAdapter adapter = new MySqlDataAdapter("Select * from werte", (c);
            
            adapter.Fill(set);

            //im Objektbaum navigieren und Daten ausgeben
        }
    }
}
