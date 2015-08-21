using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace A
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string myConnectionString = @"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF;Integrated Security=SSPI";
            string query = @"UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] " +
                      @"SET [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty].[Woda] = (12.34 + ((Media.[Woda_zimna] + Media.[Woda_ciepła])*7.88) + (13.09 * Media.[Woda_ciepła])) * Opłaty.Helper , " +
                      @"[dbo].[Opłaty].[Prąd] = (Media.[Prąd] * 0.56 + 4.75) * Opłaty.Helper, " +
                      @"[dbo].[Opłaty].[Gaz] = (Media.[Gaz] * 0.2 + 9.2) * Opłaty.Helper " +
                      @"FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; " +
                      @"UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty]  " +
                      @"SET [dbo].[Opłaty].[Suma_kosztów] = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz) " +
                      @"FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; SELECT * FROM [Opłaty]";
           
           // SqlConnection myConnection = new SqlConnection(myConnectionString);
           // SqlCommand myCommand = new SqlCommand(query, myConnection);

           // myConnection.Open();

           // GridView3.DataBind();


           //// DataGrid dgr = new DataGrid(myConnection);

            
           // opłaty.SelectCommand = query;
           // opłaty.Select(opłaty.SelectCommand);
        }

       

        protected void Sql()
        {
             string myConnectionString = @"Data Source=INVENTOD03\SQLEXPRESS;Initial Catalog=C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF;Integrated Security=SSPI";
            string query = @"UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] " +
                      @"SET [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty].[Woda] = (12.34 + ((Media.[Woda_zimna] + Media.[Woda_ciepła])*7.88) + (13.09 * Media.[Woda_ciepła])) * Opłaty.Helper , " +
                      @"[dbo].[Opłaty].[Prąd] = (Media.[Prąd] * 0.56 + 4.75) * Opłaty.Helper, " +
                      @"[dbo].[Opłaty].[Gaz] = (Media.[Gaz] * 0.2 + 9.2) * Opłaty.Helper " +
                      @"FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; " +
                      @"UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty]  " +
                      @"SET [dbo].[Opłaty].[Suma_kosztów] = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz) " +
                      @"FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; SELECT * FROM [Opłaty]";

             SqlConnection myConnection = new SqlConnection(myConnectionString);
             myConnection.Open(); 
             SqlCommand myCommand = new SqlCommand(query, myConnection);
             myCommand.ExecuteNonQuery();
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            status.Update();
            media.Update();
            opłaty.Update();
        }


        












        /*
                "UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] "+
                "SET [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty].[Woda_zimna] = Media.[Woda_zimna] * 2, "+
                "[dbo].[Opłaty].[Woda_ciepła] = Media.[Woda_ciepła] * 2, "+
                "[dbo].[Opłaty].[Prąd] = Media.[Prąd] * 2, "+
                "[dbo].[Opłaty].[Gaz] = Media.[Gaz] * 2 "+
                "FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] "+
                "Where dbo.Opłaty.ID = dbo.Media.ID;"
                "UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] "+
                "SET [dbo].[Opłaty].[Suma_kosztów] = Opłaty.Woda_ciepła + Opłaty.Woda_zimna +Opłaty.Prąd + Opłaty.Gaz "+
                "FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media] "+
                "Where dbo.Opłaty.ID = dbo.Media.ID;"
         * 
         *  string monthQuery = @"UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] " +
                                @"SET Opłaty.Helper";
            //helper to 6 kolumna
            int date = DateTime.Now.Month;
            if (date <= 6) date = date + 6;
            else date = date - 6;
            Literal1.Text = "Miesiac =" + date;
       

         * 
         * 
         * 
         * 
         * 
         * 
         * 
         */
    }
}