using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A
{
    public partial class Opłaty : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = "Literal działa\n";
            List<string> list = new List<string>();
            string[] array = new string[5] {"Miesiąc", "Woda", "Prąd", "Gaz", "Suma kosztów"};
            string connectionString = @"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF;Integrated Security=SSPI";//@"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=DB;Integrated Security=SSPI";
            //string command = "SELECT * FROM [DB].[dbo].[Opłaty]";
            string command = @"SELECT [Miesiąc], [Woda], [Prąd], [Gaz], [Suma_kosztów] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty]";

            foreach (var item in array)
            {
                list.Add("<TH class='success'>" + item + "</TH>");
                //Literal1.Text += item;
            }


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    var reader = cmd.ExecuteReader();
                    try
                    {
                        string row = "";
                        Literal1.Text = @"<TABLE class='table table-hover'>";
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