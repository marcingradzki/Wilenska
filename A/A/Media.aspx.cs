using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace A
{
    public partial class Media : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString = @"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF;Integrated Security=SSPI";
            string mySelectQueryWodaZimna = @"SELECT [Miesiąc], [Woda_zimna] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]";
            string mySelectQueryWodaCiepla = @"SELECT [Miesiąc], [Woda_ciepła] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]";
            string mySelectQueryPrad = @"SELECT [Miesiąc], [Prąd] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]";
            string mySelectQueryGaz = @"SELECT [Miesiąc], [Gaz] FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]";
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

            //.LabelStyle = new LabelStyle() { Font = new Font("Verdana", 7.5f) };

            // Initialize a connection string    

            SqlConnection myConnection = new SqlConnection(myConnectionString);
            SqlCommand myCommand = new SqlCommand(mySelectionQueryWodaZimna, myConnection);

            myConnection.Open();

            // set chart data source - the data source must implement IEnumerable
            Chart1.DataSource = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
            Chart1.Series[0].XValueMember = x;
            Chart1.Series[0].YValueMembers = zimna;
            Chart1.Series[0].ChartType = SeriesChartType.Column;
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            SqlConnection myConnection1 = new SqlConnection(myConnectionString);
            SqlCommand myCommand1 = new SqlCommand(mySelectionQueryWodaCiepla, myConnection1); 

            myConnection1.Open();
            Chart2.DataSource = myCommand1.ExecuteReader(CommandBehavior.CloseConnection);
            Chart2.Series[0].XValueMember = x;
            Chart2.Series[0].YValueMembers = ciepla;
            Chart2.Series[0].ChartType = SeriesChartType.Column;
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            SqlConnection myConnection2 = new SqlConnection(myConnectionString);  
            SqlCommand myCommand2 = new SqlCommand(mySelectionQueryPrad, myConnection2);

            myConnection2.Open();
            Chart3.DataSource = myCommand2.ExecuteReader(CommandBehavior.CloseConnection);
            Chart3.Series[0].XValueMember = x;
            Chart3.Series[0].YValueMembers = prad;
            Chart3.Series[0].ChartType = SeriesChartType.Column;
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            SqlConnection myConnection3 = new SqlConnection(myConnectionString); 
            SqlCommand myCommand3 = new SqlCommand(mySelectionQueryGaz, myConnection3);

            myConnection3.Open();
            Chart4.DataSource = myCommand3.ExecuteReader(CommandBehavior.CloseConnection);
            Chart4.Series[0].XValueMember = x;
            Chart4.Series[0].YValueMembers = gaz;
            Chart4.Series[0].ChartType = SeriesChartType.Column;
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        }
      
    }
}