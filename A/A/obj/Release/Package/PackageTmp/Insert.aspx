<%@ Page Title="Wprowadzanie danych" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="A.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <h1 ><%: Title %>.</h1>
        <h2 >Wczytaj dane do tabeli</h2>

    <br />
    <asp:Button ID="Button1" runat="server" Text="Odśwież i zapisz zmiany" OnClick="Button1_Click" class="btn btn-success btn-lg"/>
    <br />
    <h3>Status</h3>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="status" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="status" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM czynsz WHERE ID = ?" InsertCommand="INSERT INTO czynsz (ID, Imię, Nazwisko, Lipiec, Sierpień, Wrzesień, Pazdziernik, Listopad, Grudzień, Styczeń, Luty, Marzec, Kwiecień, Maj, Czerwiec) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM czynsz" UpdateCommand="UPDATE czynsz SET Imię = ?, Nazwisko = ?, Lipiec = ?, Sierpień = ?, Wrzesień = ?, Pazdziernik = ?, Listopad = ?,Grudzień = ?, Styczeń = ?, Luty = ?, Marzec = ?, Kwiecień = ?, Maj = ?, Czerwiec = ? WHERE ID = ?">
            <DeleteParameters>
                
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Imię" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Lipiec" Type="String" />
                <asp:Parameter Name="Sierpień" Type="String" />
                <asp:Parameter Name="Wrzesień" Type="String" />
                <asp:Parameter Name="Pazdziernik" Type="String" />
                <asp:Parameter Name="Listopad" Type="String" />
                <asp:Parameter Name="Grudzień" Type="String" />
                <asp:Parameter Name="Styczeń" Type="String" />
                <asp:Parameter Name="Luty" Type="String" />
                <asp:Parameter Name="Marzec" Type="String" />
                <asp:Parameter Name="Kwiecień" Type="String" />
                <asp:Parameter Name="Maj" Type="String" />
                <asp:Parameter Name="Czerwiec" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imię" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Lipiec" Type="String" />
                <asp:Parameter Name="Sierpień" Type="String" />
                <asp:Parameter Name="Wrzesień" Type="String" />
                <asp:Parameter Name="Pazdziernik" Type="String" />
                <asp:Parameter Name="Listopad" Type="String" />
                <asp:Parameter Name="Grudzień" Type="String" />
                <asp:Parameter Name="Styczeń" Type="String" />
                <asp:Parameter Name="Luty" Type="String" />
                <asp:Parameter Name="Marzec" Type="String" />
                <asp:Parameter Name="Kwiecień" Type="String" />
                <asp:Parameter Name="Maj" Type="String" />
                <asp:Parameter Name="Czerwiec" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    

    <h3>Media</h3>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="media" ForeColor="#333333" GridLines="None" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="media" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM  media  WHERE  ID  = ?" InsertCommand="INSERT INTO  media  ( ID ,  Miesiąc ,  Woda_zimna ,  Woda_ciepła ,  Prąd ,  Gaz ) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM  media " UpdateCommand="UPDATE  media  SET  Miesiąc  = ?,  Woda_zimna  = ?,  Woda_ciepła  = ?,  Prąd  = ?,  Gaz  = ? WHERE  ID  = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Miesiąc" Type="String" />
                <asp:Parameter Name="Woda_zimna" Type="Decimal" />
                <asp:Parameter Name="Woda_ciepła" Type="Decimal" />
                <asp:Parameter Name="Prąd" Type="Decimal" />
                <asp:Parameter Name="Gaz" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Miesiąc" Type="String" />
                <asp:Parameter Name="Woda_zimna" Type="Decimal" />
                <asp:Parameter Name="Woda_ciepła" Type="Decimal" />
                <asp:Parameter Name="Prąd" Type="Decimal" />
                <asp:Parameter Name="Gaz" Type="Decimal" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <h3>Opłaty</h3>
    <asp:GridView ID="GridView3" runat="server" CellPadding="4" DataSourceID="opłaty" ForeColor="#333333" GridLines="None" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        
    

        <asp:SqlDataSource ID="opłaty" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>"

            SelectCommand="
            UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 2.2 + 9.2) * Opłaty.Helper
               
                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID; SELECT * FROM Opłaty"
            UpdateCommand=
            "UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 2.2 + 9.2) * Opłaty.Helper
                
                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID;
                
                UPDATE opłaty SET Helper = ?, Czynsz = ?, Internet = ?, Składka = ? WHERE ID = ?;
                SELECT * FROM Opłaty" >
        <UpdateParameters>
            <asp:Parameter Name="Helper" Type="Int32" />
            <asp:Parameter Name="Czynsz" Type="Int32" />
            <asp:Parameter Name="Internet" Type="Decimal" />
            <asp:Parameter Name="Składka" Type="Decimal" />
            <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
    </asp:SqlDataSource>

    <!--
        SelectCommand="
            UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 2.2 + 9.2) * Opłaty.Helper

                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID; SELECT * FROM Opłaty"
            UpdateCommand=
            "UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 2.2 + 9.2) * Opłaty.Helper
                
                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID;
                UPDATE  opłaty  SET  Helper  = ? WHERE  ID  = ?;
                UPDATE  opłaty  SET  Czynsz  = ? WHERE  ID  = ?;
                UPDATE  opłaty  SET  Internet  = ? WHERE  ID  = ?;
                UPDATE  opłaty  SET  Składka  = ? WHERE  ID  = ?;
                SELECT * FROM Opłaty" >
        <UpdateParameters>
            <asp:Parameter Name="Helper" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Czynsz" Type="Int32" />
            <asp:Parameter Name="Internet" Type="Decimal" />
            <asp:Parameter Name="Składka" Type="Decimal" />
            </UpdateParameters>
        
        -->










   <!-- 
                opłaty.czynsz = opłaty.czynsz * opłaty.helper,
                opłaty.internet = opłaty.internet * opłaty.helper,
                opłaty.składka = opłaty.składka * opłaty.Helper
       
       
       
       SelectCommand="
            UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 0.2 + 9.2) * Opłaty.Helper,
                opłaty.czynsz = opłaty.czynsz * opłaty.helper,
                opłaty.internet = opłaty.internet * opłaty.helper,
                opłaty.składka = opłaty.składka * opłaty.Helper
                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID; SELECT * FROM Opłaty"
            UpdateCommand=
            "UPDATE Opłaty, media
                SET Opłaty.Woda = (12.34 + ((Media.Woda_zimna + Media.Woda_ciepła)*7.88) + (13.09 * Media.Woda_ciepła)) * Opłaty.Helper ,
                Opłaty.Prąd = (Media.Prąd * 0.56 + 4.75) * Opłaty.Helper,
                Opłaty.Gaz = (Media.Gaz * 0.2 + 9.2) * Opłaty.Helper,
                opłaty.czynsz = opłaty.czynsz * opłaty.helper,
                opłaty.internet = opłaty.internet * opłaty.helper,
                opłaty.składka = opłaty.składka * opłaty.helper
                WHERE Opłaty.ID = media.ID;
                UPDATE Opłaty, media
                SET Opłaty.Suma_kosztów = (Opłaty.Woda + Opłaty.Prąd + Opłaty.Gaz + opłaty.czynsz)
                Where Opłaty.ID = Media.ID; SELECT * FROM Opłaty" >
    -->


        </asp:Content>

