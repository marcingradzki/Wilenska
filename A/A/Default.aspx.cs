using System;
using System.Collections.Generic;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;

namespace A
{
    public partial class _Default : Page
    {

        //public string bartek = childTable();
        //public string bartek1 = "bartek";

        protected void Page_Load(object sender, EventArgs e)
        {
            viewTable(sender,e);
            //Literal2.Text = childTable("bartek");
            //File.WriteAllText(@"C:\Users\ivs002\Desktop\error.txt", childTable("bartek"));
            
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
            int count = 0;

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(command, conn))
                {
                    var reader = cmd.ExecuteReader();
                    try
                    {
                        string row = "";
                        Literal1.Text = @"<TABLE class='table table-hover' id='Tabelka' style='display:none'><h2 id='tableTitle' style='display:none'>Kliknij nazwisko aby rozwinąć </h2>";
                        Literal1.Text += "<TR>";
                        foreach (var i in l)
                        {
                            Literal1.Text += i;
                        }
                        Literal1.Text += "</TR>";
                        while (reader.Read())
                        {

                            row += "<TR" + " id='" + count.ToString() + "'" + " onclick='myFunction" + count.ToString() + "()'" + ">";
                            for (int i = 1; i < reader.FieldCount; i++)
                            {
                                row +=  "<TD>"+ reader.GetString(i) +"</TD>";
                            }
                            row += "</TR>";
                            count++;
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
                    Literal1.Text = attacheChildTables(Alert(Literal1.Text, connectionString));
                    //File.WriteAllText(@"C:\Users\ivs002\Desktop\error.txt", Literal1.Text);
                    conn.Close();    
                }
            }
        }

        protected string attacheChildTables(string literal)
        {
            string[] names = new string[5] { "bartek", "marta", "marcin", "sylwek", "piotrek" };
            string[] ids = new string[5] { "z0", "z1", "z2", "z3", "z4" };
            int last;
            int i = 0;
            
            string oldstring = literal;
            string pattern = "</TD></TR><TR id='1'";
            string newpattern = "</TD></TR>" + "<TR id='" + ids[i] + "' ><TD colspan='2'>" + childTable(names[i]) + "</TD></TR><TR id='1'";
            oldstring = oldstring.Replace(pattern, newpattern);
            i++;

            pattern = "</TD></TR><TR id='2'";
            newpattern = "</TD></TR>" + "<TR id='" + ids[i] + "' ><TD colspan='2'>" + childTable(names[i]) + "</TD></TR><TR id='2'";
            oldstring = oldstring.Replace(pattern, newpattern);
            i++;

            pattern = "</TD></TR><TR id='3'";
            newpattern = "</TD></TR>" + "<TR id='" + ids[i] + "' ><TD colspan='2'>" + childTable(names[i]) + "</TD></TR><TR id='3'";
            oldstring = oldstring.Replace(pattern, newpattern);
            i++;

            pattern = "</TD></TR><TR id='4'";
            newpattern = "</TD></TR>" + "<TR id='" + ids[i] + "' ><TD colspan='2'>" + childTable(names[i]) + "</TD></TR><TR id='4'";
            oldstring = oldstring.Replace(pattern, newpattern);
            i++;

            pattern = "</TD></TR></TABLE>";
            newpattern = "</TD></TR>" + "<TR id='" + ids[i] + "' ><TD colspan='2'>" + childTable(names[i]) + "</TD></TR></TABLE>";
            last = oldstring.Length - 18;
            oldstring = oldstring.Remove(last, 18);
            oldstring = oldstring + newpattern;
            return oldstring;
        }

        //<tr  id='0'><td><TABLE class='smallTable table table-hover'; ><TH class='info'>Czynsz</TH><TH class='info'>Internet</TH><TH class='info'>Składka</TH><TR><TD>0,00</TD><TD>0,00</TD><TD>0,00</TD></TR></TABLE></td></tr>

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
                new Osoby(){Bool = bpiotr, Query = piotr},

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
                   //"<tr id="1" onclick="myFunction1()">"
                    string pattern = "<TR id='0' onclick='myFunction0()'><TD>Bartłomiej";
                    string newpattern = "<TR id='0' class='danger'><TD>Bartłomiej";//<TR id='0' onclick='myFunction0()' class='danger'>
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[1].Bool)
                {
                    string pattern = "<TR id='1' onclick='myFunction1()'><TD>Marta";
                    string newpattern = "<TR id='1' class='danger'><TD>Marta";//<TR id='1' onclick='myFunction1()' class='danger'>
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[2].Bool)
                {
                    string pattern = "<TR id='2' onclick='myFunction2()'><TD>Marcin";
                    string newpattern = "<TR id='2' class='danger'><TD>Marcin";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[3].Bool)
                {
                    string pattern = "<TR id='3' onclick='myFunction3()'><TD>Sylwester";
                    string newpattern = "<TR id='3' class='danger'><TD>Sylwester";
                    oldstring = oldstring.Replace(pattern, newpattern);
                    
                }
                if (osoby[4].Bool)
                {
                    string pattern = "<TR id='4' onclick='myFunction4()'><TD>Piotr";
                    string newpattern = "<TR id='4' class='danger'><TD>Piotr";
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

        static protected string childTable(string who)
        {
            string table = @"<TABLE class='table table-hover';><TH class='info'>Czynsz</TH><TH class='info'>Internet</TH><TH class='info'>Składka</TH><TR>";
            MySqlConnection myConn = new MySqlConnection(WebConfigurationManager.ConnectionStrings["DBConnectionString"].ToString());
            MySqlCommand command = new MySqlCommand("SELECT Czynsz, Internet, Składka FROM " + who, myConn);
            myConn.Open();
            var reader = command.ExecuteReader(CommandBehavior.CloseConnection);
            reader.Read();
            //string[] tab = new string[5] { "bartek", "marta", "marcin", "sylwek", "piotrek" };
            for (int i = 0; i < reader.FieldCount; i++)
            {
                //table += "<TR id='" + tab[i] + "'>";
                table += "<TD>" + reader.GetString(i) + "</TD>";
            }
            table += "</TR></TABLE>";
            myConn.Close();
            return table;
        }

    }
}