using System;
using System.Collections.Generic;
using System.Data;
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
            DataSet set = new DataSet();
            //den Adapter selbst konfigurieren
            MySqlDataAdapter adapter = new MySqlDataAdapter();

            adapter.Fill(set);

            //im Objektbaum navigieren und Daten ausgeben
        }
    }
}
