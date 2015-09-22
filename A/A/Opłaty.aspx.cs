using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.Configuration;
using MySql.Data.MySqlClient;

namespace A
{
    public partial class Opłaty : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Literal1.Text = "Literal działa\n";
            List<string> list = new List<string>();
            string[] array = new string[8] { "Miesiąc", "Woda", "Prąd", "Gaz", "Czynsz", "Suma kosztów", "Internet", "Składka" };
            string connectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ToString();
            string command = @"SELECT Miesiąc, Woda, Prąd, Gaz, Czynsz, Suma_kosztów, Internet, Składka FROM `acsm_a0194eca4f70c60`.`Opłaty`";

            foreach (var item in array)
            {
                list.Add("<TH class='success'>" + item + "</TH>");
                //Literal1.Text += item;
            }


            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(command, conn))
                {
                    var reader = cmd.ExecuteReader();
                    try
                    {
                        string row = "";
                        Literal1.Text = @"<TABLE class='table table-hover' id='tabela'>";
                        Literal1.Text += "<TR>";
                        foreach (var i in list)
                        {
                            Literal1.Text += i;
                        }
                        Literal1.Text += "</TR>";

                        while (reader.Read())
                        {
                            row += "<TR>";
                            for (int i = 0; i < reader.FieldCount; i++)
                            {
                                row += "<TD>" + reader.GetValue(i) + "</TD>";
                            }
                            row += "</TR>";
                        }
                        Literal1.Text += row;
                        Literal1.Text += "</TABLE>";
                        
                    }
                    catch (Exception ee)
                    {
                        Literal1.Text = ee.ToString();

                    }
                    
                    

                }
            }
          
        }

        
        
    }
}