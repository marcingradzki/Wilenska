using System;
using System.Web.Configuration;
using MySql.Data.MySqlClient;
using System.Linq;
using System.IO;

namespace A
{
    public partial class Insert : System.Web.UI.Page
    {


        public string Month { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string month = getMonth();
            

            bartek.SelectCommand = selectCommand("bartek",month,"360");
            bartek.UpdateCommand = updateCommand("bartek", getMonth(), "360");
            marta.SelectCommand = selectCommand("marta", month,"260");
            marta.UpdateCommand = updateCommand("marta", getMonth(), "260");
            marcin.SelectCommand = selectCommand("marcin", month, "260");
            marcin.UpdateCommand = updateCommand("marcin", getMonth(), "260");
            sylwek.SelectCommand = selectCommand("sylwek", month, "260");
            sylwek.UpdateCommand = updateCommand("sylwek", getMonth(), "260");
            piotrek.SelectCommand = selectCommand("piotrek", month, "260");
            piotrek.UpdateCommand = updateCommand("piotrek", getMonth(), "260");
            media.UpdateCommand = updateMedia();
            //literal11.Text = month;
            
            
        }



        protected string updateMedia()
        {
            decimal [,] tab = createArrayMedia_zuzycie();
            string[] headers = new string[4] { "Woda_zimna", "Woda_ciepła", "Prąd", "Gaz" };
            decimal result;
            string update = "";
            int month = int.Parse(getMonth());

            for (int i = 1; i < month ; i++)
            {
                for (int j = 0; j < 4; j++)
                {
                    result = tab[i, j] - tab[i - 1, j];
                    update += "UPDATE media_zuzycie " +
                    "SET " + headers[j] + " = " + result.ToString() + " " +
                    "WHERE ID = " + (i + 1).ToString()+ "; \n" ;
                }
            }
            update = update.Replace(',', '.');
            //File.WriteAllText(@"C:\Users\ivs002\Desktop\error.txt", update);
            //literal11.Text = "    " + month.ToString();
            return update;
        }


        protected decimal[,] createArrayMedia_zuzycie()
        {
            int count = 0;
            string temp;
            bool b;
            decimal value;
            decimal[,] dataTable = new decimal[12, 4];
            string command = "SELECT * FROM acsm_a0194eca4f70c60.media";
            string myConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ToString();
            using (MySqlConnection conn = new MySqlConnection(myConnectionString))
            {
                conn.Open();
                using (MySqlCommand cmd = new MySqlCommand(command, conn))
                {
                    var reader = cmd.ExecuteReader();
                    try
                    {
                        while (reader.Read())
                        {
                            for (int i = 2; i < reader.FieldCount; i++)
                            {
                                temp = reader.GetString(i);
                                b = Decimal.TryParse(temp, out value);
                                dataTable[count, i -2] = value;
                            }
                            count++;
                        }

                    }
                    catch (Exception e)
                    {
                        literal11.Text = e.ToString();

                    }
                    conn.Close();

                    return dataTable;
                }
            }
        }



        protected string selectCommand(string person, string month, string value)
        {
            string select = 
            "UPDATE " + person + ", opłaty " +
            @"SET " + person + ".czynsz = ((opłaty.suma_kosztów - opłaty.czynsz)/5 + " + value + ")* "+person+".czynszHelp, " +
            person + @".internet = (opłaty.internet / 5) *" +person +".internetHelp "+
            @"WHERE opłaty.ID = " + month + "; " +
            @"SELECT * FROM `" + person + "`;";
            return select;
        }
       protected string updateCommand(string person, string month, string value)
        {
            string update =
             "UPDATE " + person + ", opłaty " +
            @"SET " + person + ".czynsz = ((opłaty.suma_kosztów - opłaty.czynsz)/5 + " + value + ")* " + person + ".czynszHelp, " +
            person + @".internet = (opłaty.internet / 5) *" + person + ".internetHelp " +
             @"WHERE opłaty.ID = " + month + "; " +
             "UPDATE `" + person + "` SET `Składka` = ?, czynszHelp = ?, internetHelp = ?, składkaHelp = ? WHERE `ID` = ?; "+
             "UPDATE "+person+" SET składka = składka * składkaHelp; SELECT * FROM `" + person + "`;";
            return update;
        }

        protected string getMonth()
        {
            int number = (int)DateTime.Now.Month;
            if (number <= 6) number = number + 6;
            else number = number - 6;
            return number.ToString();
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            status.Update();

            media.Update();

            opłaty.Update();
            
            bartek.Update();
            
            marta.Update();
            
            marcin.Update();
            
            sylwek.Update();
            
            piotrek.Update();
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}