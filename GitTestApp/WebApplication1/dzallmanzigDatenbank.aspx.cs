using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.Common;

namespace WebApplication1
{
    public partial class dzallmanzigDatenbank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickVerbinden(object sender, EventArgs e)
        {
            ConnectDatabase();
        }


        // Status ob mit dem Datenbank Server verbunden oder nicht
        // Boolean SrvStatus = false;

        // Verbindung zur Datenbank
        DbConnection c;

        // Methode zur Verbindung zur Datenbank
        private void ConnectDatabase()
        {
            // Sammelt die Daten aus den Textboxen und stellt die Verbindung her
            String ServerName = "Server=" + tbServer.Text + ";";
            String Port = "Port=" + tbPort.Text + ";";
            String User = "UID=" + tbUser.Text + ";";
            String PW = "PWD=" + tbPW.Text + ";";
            
            c = new MySqlConnection(ServerName + Port + User + PW);
            Console.WriteLine(ServerName + Port + User + PW);

            //try
            //{
            c.Open();
                // Zeigt in der ListBox die einzelnen Datenbanken auf
                //pictureBox1.Show();
                //DatenbankenAnzeigen();
                //listBox1.Show();
                //lblDatenbank.Show();
                //btnVerb.Text = "Trennen";
                //SrvStatus = true;
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message, "Login fehlgeschlagen", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}
        }

        //private void DisconnectDatabase()
        //{
        //    c.Close();
        //    pictureBox1.Hide();
        //    SrvStatus = false;
        //}

        //private void btnVerb_MouseClick(object sender, MouseEventArgs e)
        //{
        //    if (SrvStatus == false)
        //    {
        //        ConnectDatabase();
        //    }
        //    else
        //    {
        //        DisconnectDatabase();
        //        btnVerb.Text = "Verbinden";
        //        dataGridView2.Hide();
        //        listBox1.Hide();
        //        listBox2.Hide();
        //        lblDatenbank.Hide();
        //        lblTabellen.Hide();
        //        SrvStatus = false;
        //    }
        //}

        //private void DatenbankenAnzeigen()
        //{
        //    listBox1.Items.Clear();
        //    DbCommand cmd = c.CreateCommand();
        //    cmd.CommandText = "show databases";
        //    DbDataReader reader = cmd.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        listBox1.Items.Add(reader.GetString(0));
        //    }
        //    reader.Close();
        //}

        //private void DatenbankAuswaehlen()
        //{
        //    dataGridView2.Hide();
        //    DbCommand cmd = c.CreateCommand();
        //    cmd.CommandText = "use " + listBox1.SelectedItem;
        //    cmd.ExecuteNonQuery();
        //}
        //private void TabellenAnzeigen()
        //{
        //    DatenbankAuswaehlen();
        //    DbCommand cmd = c.CreateCommand();
        //    cmd.CommandText = "show tables";
        //    DbDataReader reader = cmd.ExecuteReader();
        //    listBox2.Items.Clear();
        //    while (reader.Read())
        //    {
        //        listBox2.Items.Add(reader.GetString(0));
        //    }
        //    reader.Close();
        //}

        //private void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    listBox2.Show();
        //    lblTabellen.Show();
        //    TabellenAnzeigen();
        //}

        //private void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    dataGridView2.Show();
        //    String tabellenName = listBox2.SelectedItem.ToString();
        //    Console.WriteLine("Gewählte Tabelle: " + tabellenName);
        //    DbCommand cmd1 = c.CreateCommand();
        //    cmd1.CommandText = "Select * From " + tabellenName;
        //    DbDataReader reader = cmd1.ExecuteReader();
        //    dataGridView2.ColumnCount = 0;

        //    int n = 0;
        //    while (n < reader.FieldCount)
        //    {
        //        dataGridView2.Columns.Add(reader.GetName(n), reader.GetName(n));
        //        n++;
        //    }

        //    int m = 0;

        //    while (reader.Read())
        //    {
        //        dataGridView2.RowCount++;
        //        n = 0;
        //        while (n < reader.FieldCount)
        //        {
        //            if (!reader.IsDBNull(n))
        //            {
        //                dataGridView2[reader.GetName(n), m].Value = reader.GetString(n);
        //            }
        //            else
        //            {
        //                dataGridView2[reader.GetName(n), m].Value = "LEER";
        //            }
        //            n++;
        //        }
        //        m++;
        //    }
        //    reader.Close();
        //}
    }
}