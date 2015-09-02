using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using MySql.Data.MySqlClient;

namespace A
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //string query = @"UPDATE `acsm_a0194eca4f70c60`.`Opłaty` " +
            //          @"SET `acsm_a0194eca4f70c60`.`Opłaty`.[Woda] = (12.34 + ((Media.[Woda_zimna] + Media.[Woda_ciepła])*7.88) + (13.09 * Media.[Woda_ciepła])) * Opłaty.Helper , " +
            //          @"`acsm_a0194eca4f70c60`.`Opłaty`.[Prąd] = (Media.[Prąd] * 0.56 + 4.75) * Opłaty.Helper, " +
            //          @"`acsm_a0194eca4f70c60`.`Opłaty`.[Gaz] = (Media.[Gaz] * 0.2 + 9.2) * Opłaty.Helper " +
            //          @"FROM `acsm_a0194eca4f70c60`.`Media` " +
            //          @"Where dbo.Opłaty.ID = dbo.Media.ID; " +
            //          @"UPDATE `acsm_a0194eca4f70c60`.`Opłaty`  " +
            //          @"SET `acsm_a0194eca4f70c60`.`Opłaty`.[Suma_kosztów] = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz) " +
            //          @"FROM `acsm_a0194eca4f70c60`.`Media` " +
            //          @"Where dbo.Opłaty.ID = dbo.Media.ID; SELECT * FROM [Opłaty]";
          
        }

       

        protected void Sql()
        {
            string myConnectionString = WebConfigurationManager.ConnectionStrings["DBCon"].ToString();
            string query = @"UPDATE `acsm_a0194eca4f70c60`.`Opłaty` " +
                      @"SET `acsm_a0194eca4f70c60`.`Opłaty`.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper , " +
                      @"`acsm_a0194eca4f70c60`.`Opłaty`.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper, " +
                      @"`acsm_a0194eca4f70c60`.`Opłaty`.Gaz = (Media.Gaz * 0.2 + 9.2) * Opłaty.Helper, " +
                      @"`acsm_a0194eca4f70c60`.`Opłaty`.Czynsz = @Czynsz, "+
                      @"`acsm_a0194eca4f70c60`.`Opłaty`.Internet = @Internet, "+
                      @"`acsm_a0194eca4f70c60`.`Opłaty`.Składka = @Składka "+
                      @"FROM `acsm_a0194eca4f70c60`.`Media` " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; " +
                      @"UPDATE `acsm_a0194eca4f70c60`.`Opłaty`  " +
                      @"SET `acsm_a0194eca4f70c60`.`Opłaty`.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + Opłaty.Czynsz + Opłaty.Internet + Opłaty.Składka) " +
                      @"FROM `acsm_a0194eca4f70c60`.`Media` " +
                      @"Where dbo.Opłaty.ID = dbo.Media.ID; SELECT * FROM Opłaty";

             MySqlConnection myConnection = new MySqlConnection(myConnectionString);
             myConnection.Open(); 
             MySqlCommand myCommand = new MySqlCommand(query, myConnection);
             myCommand.ExecuteNonQuery();
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            status.Update();
            media.Update();
            opłaty.Update();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        












        /*
                "UPDATE [dbo].[Opłaty] "+
                "SET [dbo].[Opłaty].[Woda_zimna] = Media.[Woda_zimna] * 2, "+
                "[dbo].[Opłaty].[Woda_ciepła] = Media.[Woda_ciepła] * 2, "+
                "[dbo].[Opłaty].[Prąd] = Media.[Prąd] * 2, "+
                "[dbo].[Opłaty].[Gaz] = Media.[Gaz] * 2 "+
                "FROM `acsm_a0194eca4f70c60`.`Media` "+
                "Where dbo.Opłaty.ID = dbo.Media.ID;"
                "UPDATE [dbo].[Opłaty] "+
                "SET [dbo].[Opłaty].[Suma_kosztów] = Opłaty.Woda_ciepła + Opłaty.Woda_zimna +Opłaty.Prąd + Opłaty.Gaz "+
                "FROM `acsm_a0194eca4f70c60`.`Media` "+
                "Where dbo.Opłaty.ID = dbo.Media.ID;"
         * 
         *  string monthQuery = @"UPDATE [dbo].[Opłaty] " +
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