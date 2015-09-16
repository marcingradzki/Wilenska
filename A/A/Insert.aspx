<%@ Page Title="Wprowadzanie danych" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="A.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">

    .smallTable
    {
        width: 100%;
        margin-left: auto; 
        margin-right: auto;
        display:table-row;   
    }
    .GridViewEditRow input[type=text]
    {
        width: 70%;
    }
    .GridViewEditRowLarge input[type=text]
    {
        width: 70%;
    }
    </style>


        <h1 ><%: Title %>.</h1>
        <h2 >Wczytaj dane do tabeli</h2>

    <br />
    <asp:Button ID="Button1" runat="server" Text="Odśwież i zapisz zmiany" OnClick="Button1_Click" class="btn btn-success btn-lg"/>
    <br />
    <asp:Literal ID="literal11" runat="server"></asp:Literal>
    <div class="row">
        <div class="col-md-6">

    <h3>Bartek</h3>
    <asp:GridView ID="GridView4" runat="server" DataSourceID="bartek" CellPadding="4" ForeColor="#333333" GridLines="None" class="table table-hover smallTable">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" />
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
        <asp:SqlDataSource ID="bartek" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>">

            <UpdateParameters>

                <asp:Parameter Name="Składka" Type="Decimal" />
                <asp:Parameter Name="czynszHelp" Type="Int32" />
                <asp:Parameter Name="internetHelp" Type="Int32" />
                <asp:Parameter Name="składkaHelp" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />

            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        <div class="col-md-6">
    <h3>Marta</h3>
    <asp:GridView ID="GridView5" runat="server" DataSourceID="marta" CellPadding="4" ForeColor="#333333" GridLines="None" class="table table-hover smallTable">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" />
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
        <asp:SqlDataSource ID="marta" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>">

            <UpdateParameters>

                <asp:Parameter Name="Składka" Type="Decimal" />
                <asp:Parameter Name="czynszHelp" Type="Int32" />
                <asp:Parameter Name="internetHelp" Type="Int32" />
                <asp:Parameter Name="składkaHelp" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />

            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        </div>
    <div class="row">
        <div class="col-md-6">

    <h3>Marcin</h3>
    <asp:GridView ID="GridView6" runat="server" DataSourceID="marcin" CellPadding="4" ForeColor="#333333" GridLines="None" class="table table-hover smallTable">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" />
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
        <asp:SqlDataSource ID="marcin" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>">

            <UpdateParameters>

                <asp:Parameter Name="Składka" Type="Decimal" />
                <asp:Parameter Name="czynszHelp" Type="Int32" />
                <asp:Parameter Name="internetHelp" Type="Int32" />
                <asp:Parameter Name="składkaHelp" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />

            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        
    
        <div class="col-md-6">
    <h3>Sylwek</h3>
    <asp:GridView ID="GridView7" runat="server" DataSourceID="sylwek" CellPadding="4" ForeColor="#333333" GridLines="None" class="table table-hover smallTable">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" />
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
        <asp:SqlDataSource ID="sylwek" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>">

            <UpdateParameters>

                <asp:Parameter Name="Składka" Type="Decimal" />
                <asp:Parameter Name="czynszHelp" Type="Int32" />
                <asp:Parameter Name="internetHelp" Type="Int32" />
                <asp:Parameter Name="składkaHelp" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />

            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        </div>
    <div class="row">
        <div class="col-md-6">

    <h3>Piotrek</h3>
    <asp:GridView ID="GridView8" runat="server" DataSourceID="piotrek"  CellPadding="4" ForeColor="#333333" GridLines="None" class="table table-hover smallTable">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRow" BackColor="#2461BF" />
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


        <asp:SqlDataSource ID="piotrek" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>">

            <UpdateParameters>

                <asp:Parameter Name="Składka" Type="Decimal" />
                <asp:Parameter Name="czynszHelp" Type="Int32" />
                <asp:Parameter Name="internetHelp" Type="Int32" />
                <asp:Parameter Name="składkaHelp" Type="Int32" />
                <asp:Parameter Name="ID" Type="Int32" />

            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        </div>
     <br/>

    <h3>Status</h3>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="status" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <EditRowStyle CssClass="GridViewEditRowLarge" BackColor="#2461BF" />
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
        <EditRowStyle CssClass="GridViewEditRowLarge" BackColor="#2461BF" />
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
    <%-- tu trzeba zmienic update, chyba blisko jestem --%>
        <asp:SqlDataSource ID="media" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" 
            DeleteCommand="DELETE FROM  media  WHERE  ID  = ?" 
            InsertCommand="INSERT INTO  media  ( ID ,  Miesiąc ,  Woda_zimna ,  Woda_ciepła ,  Prąd ,  Gaz ) VALUES (?, ?, ?, ?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM  media "
            UpdateCommand="UPDATE  media  SET  Miesiąc  = ?,  Woda_zimna  = ? , Woda_ciepła  = ?,  Prąd  = ? ,  Gaz  = ? WHERE  ID  = ?;">  
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
        <EditRowStyle CssClass="GridViewEditRowLarge" BackColor="#2461BF" />
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
        </asp:Content>

