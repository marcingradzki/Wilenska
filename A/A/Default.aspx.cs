using System;
using System.Collections.Generic;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.Configuration;


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
            string connectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ToString();
            //string connectionString = @"Database=acsm_a0194eca4f70c60;Data Source=eu-cdbr-azure-west-c.cloudapp.net;User Id=baeb725b8c8ea0;Password=4535d1d5";
            string command = @"SELECT * FROM `acsm_a0194eca4f70c60`.`Czynsz`";
            

            foreach (var item in headers)
            {
                list.Add("<TH class='success'>" + item + "</TH>");
            }
            List<string> l = Month(list);


            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(command, conn))
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
                {10, "Pazdziernik"}, {11, "Listopad"}, {12, "Grudzień"}};

            bool bgladki = false, bmarta = false, bmarcin = false, bsadza = false, bpiotr = false;
            string query = @"SELECT `" + dc[DateTime.Now.Month] + @"` FROM `acsm_a0194eca4f70c60`.`Czynsz` WHERE `ID` = ";
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
                MySqlConnection myConnection = new MySqlConnection(connectionString);
                MySqlCommand myCommand = new MySqlCommand(osoby[i].Query, myConnection);
                myConnection.Open();
                MySqlDataReader reader = myCommand.ExecuteReader();
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
                //Literal2.Text += osoby[i].Bool.ToString();
                myConnection.Close();
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