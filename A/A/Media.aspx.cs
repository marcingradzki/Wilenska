using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.Configuration;
using MySql.Data.MySqlClient;
using System.IO;

namespace A
{
    public partial class Media : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ToString();

            string mySelectQueryWodaZimna = @"SELECT Miesiąc, Woda_zimna FROM `acsm_a0194eca4f70c60`.`Media_zuzycie`; ";
            string mySelectQueryWodaCiepla = @"SELECT Miesiąc, Woda_ciepła FROM `acsm_a0194eca4f70c60`.`Media_zuzycie`; ";
            string mySelectQueryPrad = @"SELECT Miesiąc, Prąd FROM `acsm_a0194eca4f70c60`.`Media_zuzycie`; ";
            string mySelectQueryGaz = @"SELECT Miesiąc, Gaz FROM `acsm_a0194eca4f70c60`.`Media_zuzycie`; ";
            string x = "Miesiąc";
            string zimna = "Woda_zimna";
            string ciepla = "Woda_ciepła";
            string prad = "Prąd";
            string gaz = "Gaz";
            display_chart(myConnectionString, mySelectQueryWodaZimna, mySelectQueryWodaCiepla, mySelectQueryPrad, mySelectQueryGaz, x, zimna, ciepla, prad, gaz);


        }

        private void display_chart(string myConnectionString, string mySelectionQueryWodaZimna, string mySelectionQueryWodaCiepla, string mySelectionQueryPrad, string mySelectionQueryGaz, string x, string zimna, string ciepla, string prad, string gaz)
        {
            Chart1.ChartAreas[0].AxisX.Interval = 1;
            Chart1.ChartAreas[0].AxisX.Minimum = 0;
            Chart1.Titles.Add("Woda zimna");

            Chart2.ChartAreas[0].AxisX.Interval = 1;
            Chart2.ChartAreas[0].AxisX.Minimum = 0;
            Chart2.Titles.Add("Woda ciepła");

            Chart3.ChartAreas[0].AxisX.Interval = 1;
            Chart3.ChartAreas[0].AxisX.Minimum = 0;
            Chart3.Titles.Add("Prąd");

            Chart4.ChartAreas[0].AxisX.Interval = 1;
            Chart4.ChartAreas[0].AxisX.Minimum = 0;
            Chart4.Titles.Add("Gaz");

            MySqlConnection myConnection = new MySqlConnection(myConnectionString);
            MySqlConnection myConnection1 = new MySqlConnection(myConnectionString);
            MySqlConnection myConnection2 = new MySqlConnection(myConnectionString);
            MySqlConnection myConnection3 = new MySqlConnection(myConnectionString);
            MySqlCommand myCommand = new MySqlCommand(mySelectionQueryWodaZimna, myConnection);

            myConnection.Open();

            // set chart data source - the data source must implement IEnumerable
            Chart1.DataSource = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
            Chart1.Series[0].XValueMember = x;
            Chart1.Series[0].YValueMembers = zimna;
            Chart1.Series[0].ChartType = SeriesChartType.Column;
            //myConnection.Close();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            MySqlCommand myCommand1 = new MySqlCommand(mySelectionQueryWodaCiepla, myConnection1);
            myConnection1.Open();
            Chart2.DataSource = myCommand1.ExecuteReader(CommandBehavior.CloseConnection);
            Chart2.Series[0].XValueMember = x;
            Chart2.Series[0].YValueMembers = ciepla;
            Chart2.Series[0].ChartType = SeriesChartType.Column;
            //myConnection.Close();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            MySqlCommand myCommand2 = new MySqlCommand(mySelectionQueryPrad, myConnection2);
            myConnection2.Open();
            Chart3.DataSource = myCommand2.ExecuteReader(CommandBehavior.CloseConnection);
            Chart3.Series[0].XValueMember = x;
            Chart3.Series[0].YValueMembers = prad;
            Chart3.Series[0].ChartType = SeriesChartType.Column;
            //myConnection.Close();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            MySqlCommand myCommand3 = new MySqlCommand(mySelectionQueryGaz, myConnection3);
            myConnection3.Open();
            Chart4.DataSource = myCommand3.ExecuteReader(CommandBehavior.CloseConnection);
            Chart4.Series[0].XValueMember = x;
            Chart4.Series[0].YValueMembers = gaz;
            Chart4.Series[0].ChartType = SeriesChartType.Column;

            //myConnection.Close();
            //myConnection1.Close();
            //myConnection2.Close();
            //myConnection3.Close();

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }

    }

}


     //.LabelStyle = new LabelStyle() { Font = new Font("Verdana", 7.5f) };

            // Initialize a connection string    






            //string command = mySelectionQueryWodaZimna + mySelectionQueryWodaCiepla + mySelectionQueryPrad + mySelectionQueryGaz;


            //MySqlConnection myConnection = new MySqlConnection(myConnectionString);
            //MySqlCommand myCommand = new MySqlCommand(mySelectionQueryWodaZimna, myConnection);

            //myConnection.Open();
           
            //string pierw = myCommand.ExecuteReader(CommandBehavior.CloseConnection).ToString();
            

            //// set chart data source - the data source must implement IEnumerable
            //Chart1.DataSource = pierw;
            //string n = Chart1.DataSource.ToString();
            //File.WriteAllText(@"C:\Users\ivs002\Desktop\sky24.txt", n);
            //Chart1.Series[0].XValueMember = x;
            //Chart1.Series[0].YValueMembers = zimna;
            //Chart1.Series[0].ChartType = SeriesChartType.Column;
 
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            //myConnection.Open();
            //Chart2.DataSource = drug;
            //Chart2.Series[0].XValueMember = x;
            //Chart2.Series[0].YValueMembers = ciepla;
            //Chart2.Series[0].ChartType = SeriesChartType.Column;

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            //myConnection.Open();
            //Chart3.DataSource = trzec;
            //Chart3.Series[0].XValueMember = x;
            //Chart3.Series[0].YValueMembers = prad;
            //Chart3.Series[0].ChartType = SeriesChartType.Column;

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
            //myConnection.Open();
            //Chart4.DataSource = czwart;
            //Chart4.Series[0].XValueMember = x;
            //Chart4.Series[0].YValueMembers = gaz;
            //Chart4.Series[0].ChartType = SeriesChartType.Column;
            //myConnection.Close();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
