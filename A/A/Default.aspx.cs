using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace A
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //viewTable();
        }
        
        protected void viewTable(object sender, EventArgs e)
        {
            //Literal1.Text = "TEST";
            List<string> list = new List<string>();
            string[] headers = new string[14] { "Imię", "Nazwisko", "Lipiec", "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień", "Styczneń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec" };
            string connectionString = @"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF;Integrated Security=SSPI";//ConfigurationManager.AppSettings["conString"];
            string command = @"SELECT * FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Czynsz]";


            foreach (var item in headers)
            {
                list.Add("<TH class='success'>" + item + "</TH>");
            }
            List<string> l = Month(list);      
      

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    var reader = cmd.ExecuteReader();
                    try
                    {
                        string row = "";
                        Literal1.Text = @"<TABLE class='table table-hover' >";
                        Literal1.Text += "<TR>";
                        foreach (var i in l)
                        {
                            Literal1.Text += i;
                        }
                        Literal1.Text += "</TR>";
                        while (reader.Read())
                        {
                            row += "<TR>";
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                row +=  "<TD>"+ reader.GetString(i) +"</TD>";
                            }
                            row += "</TR>";
                        }
                        Literal1.Text += row;
                        Literal1.Text += "</TABLE>";
                        //File.WriteAllText(@"C:\Users\ivs002\Desktop\error.txt", Literal1.Text);
                    }
                    catch (Exception ee)
                    {
                        Literal1.Text = ee.ToString();
                        
                    }
                    //podkreslenie dluznika
                    Literal1.Text = Alert(Literal1.Text, connectionString);
                        
                }
            }
        }

        protected string Alert(string literal, string connectionString) //podkresla dluznikow
        {
            string oldstring = literal;
            Dictionary<int, string> dc = new Dictionary<int, string>() { {1, "Styczeń"}, {2, "Luty"}, {3, "Marzec"}, {4, "Kwiecień"}, {5, "Maj"}, {6, "Czerwiec"}, {7, "Lipiec"}, {8, "Sierpień"}, {9, "Wrzesień"},
                {10, "Październik"}, {11, "Listopad"}, {12, "Grudzień"}};

            bool bgladki = false, bmarta = false, bmarcin = false, bsadza = false, bpiotr = false;
            string query = @"SELECT [" + dc[DateTime.Now.Month] + @"] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Czynsz] WHERE [ID] = ";
            string gladki = query + "1;";
            string marta = query + "2;";
            string marcin = query + "3;";
            string sadza = query + "4;";
            string piotr = query + "5;";

            List<Osoby> osoby = new List<Osoby>
            {
                new Osoby(){Bool = bgladki, Query = gladki},
                new Osoby(){Bool = bmarta, Query = marta},
                new Osoby(){Bool = bmarcin, Query = marcin},
                new Osoby(){Bool = bsadza, Query = sadza},
                new Osoby(){Bool = bpiotr, Query = piotr}
            };
            
            string temp = "";


            for (int i = 0; i < osoby.Count; i++ )
            {
                //sprawdzanie czy zaplacono
                SqlConnection myConnection = new SqlConnection(connectionString);
                SqlCommand myCommand = new SqlCommand(osoby[i].Query, myConnection);
                myConnection.Open();
                SqlDataReader reader = myCommand.ExecuteReader();
                /*if (reader.GetValue(1).ToString() == "0") */
                while (reader.Read())
                {
                    temp = reader[0].ToString().Trim();
                }
                if (temp == "0") osoby[i].Bool = true;

                //ustawienie podkreslenia
                if (osoby[0].Bool)
                {
                    string pattern = "<TR><TD>Bartłomiej";
                    string newpattern = "<TR class='danger'><TD>Bartłomiej";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[1].Bool)
                {
                    string pattern = "<TR><TD>Marta";
                    string newpattern = "<TR class='danger'><TD>Marta";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[2].Bool)
                {
                    string pattern = "<TR><TD>Marcin";
                    string newpattern = "<TR class='danger'><TD>Marcin";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[3].Bool)
                {
                    string pattern = "<TR><TD>Sylwester";
                    string newpattern = "<TR class='danger'><TD>Sylwester";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[4].Bool)
                {
                    string pattern = "<TR><TD>Piotr";
                    string newpattern = "<TR class='danger'><TD>Piotr";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                Literal2.Text += osoby[i].Bool.ToString();
            }

            return oldstring;

            
            
        }

        protected List<string> Month(List<string> headers)//podkresla aktualny miesiac
        {
            int number = (int)DateTime.Now.Month;
            if (number <= 6) number = number + 7;
            else number = number - 5;

            headers[number] = headers[number].Replace("success", "warning");

            return headers;
        }

        class Osoby
        {
            public bool Bool { get; set; }
            public string Query {get; set;}
        }

    }
}