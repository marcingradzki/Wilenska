using System;
using System.Collections.Generic;
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
         */
    }
}