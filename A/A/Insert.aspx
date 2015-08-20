<%@ Page Title="Wprowadzanie danych" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="A.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <h1 ><%: Title %>.</h1>
        <h2 >Wczytaj dane do tabeli</h2>

    <br />
    <br />
    <h3>Status</h3>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="status" ForeColor="#333333" GridLines="None" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Imię" HeaderText="Imię" SortExpression="Imię" />
            <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
            <asp:BoundField DataField="Lipiec" HeaderText="Lipiec" SortExpression="Lipiec" />
            <asp:BoundField DataField="Sierpień" HeaderText="Sierpień" SortExpression="Sierpień" />
            <asp:BoundField DataField="Wrzesień" HeaderText="Wrzesień" SortExpression="Wrzesień" />
            <asp:BoundField DataField="Październik" HeaderText="Październik" SortExpression="Październik" />
            <asp:BoundField DataField="Listopad" HeaderText="Listopad" SortExpression="Listopad" />
            <asp:BoundField DataField="Grudzień" HeaderText="Grudzień" SortExpression="Grudzień" />
            <asp:BoundField DataField="Styczeń" HeaderText="Styczeń" SortExpression="Styczeń" />
            <asp:BoundField DataField="Luty" HeaderText="Luty" SortExpression="Luty" />
            <asp:BoundField DataField="Marzec" HeaderText="Marzec" SortExpression="Marzec" />
            <asp:BoundField DataField="Kwiecień" HeaderText="Kwiecień" SortExpression="Kwiecień" />
            <asp:BoundField DataField="Maj" HeaderText="Maj" SortExpression="Maj" />
            <asp:BoundField DataField="Czerwiec" HeaderText="Czerwiec" SortExpression="Czerwiec" />
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
    
        <asp:SqlDataSource ID="status" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [Czynsz] WHERE [ID] = @original_ID AND (([Imię] = @original_Imię) OR ([Imię] IS NULL AND @original_Imię IS NULL)) AND (([Nazwisko] = @original_Nazwisko) OR ([Nazwisko] IS NULL AND @original_Nazwisko IS NULL)) AND (([Lipiec] = @original_Lipiec) OR ([Lipiec] IS NULL AND @original_Lipiec IS NULL)) AND (([Sierpień] = @original_Sierpień) OR ([Sierpień] IS NULL AND @original_Sierpień IS NULL)) AND (([Wrzesień] = @original_Wrzesień) OR ([Wrzesień] IS NULL AND @original_Wrzesień IS NULL)) AND (([Październik] = @original_Październik) OR ([Październik] IS NULL AND @original_Październik IS NULL)) AND (([Listopad] = @original_Listopad) OR ([Listopad] IS NULL AND @original_Listopad IS NULL)) AND (([Grudzień] = @original_Grudzień) OR ([Grudzień] IS NULL AND @original_Grudzień IS NULL)) AND (([Styczeń] = @original_Styczeń) OR ([Styczeń] IS NULL AND @original_Styczeń IS NULL)) AND (([Luty] = @original_Luty) OR ([Luty] IS NULL AND @original_Luty IS NULL)) AND (([Marzec] = @original_Marzec) OR ([Marzec] IS NULL AND @original_Marzec IS NULL)) AND (([Kwiecień] = @original_Kwiecień) OR ([Kwiecień] IS NULL AND @original_Kwiecień IS NULL)) AND (([Maj] = @original_Maj) OR ([Maj] IS NULL AND @original_Maj IS NULL)) AND (([Czerwiec] = @original_Czerwiec) OR ([Czerwiec] IS NULL AND @original_Czerwiec IS NULL))" InsertCommand="INSERT INTO [Czynsz] ([Imię], [Nazwisko], [Lipiec], [Sierpień], [Wrzesień], [Październik], [Listopad], [Grudzień], [Styczeń], [Luty], [Marzec], [Kwiecień], [Maj], [Czerwiec]) VALUES (@Imię, @Nazwisko, @Lipiec, @Sierpień, @Wrzesień, @Październik, @Listopad, @Grudzień, @Styczeń, @Luty, @Marzec, @Kwiecień, @Maj, @Czerwiec)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Czynsz]" UpdateCommand="UPDATE [Czynsz] SET [Imię] = @Imię, [Nazwisko] = @Nazwisko, [Lipiec] = @Lipiec, [Sierpień] = @Sierpień, [Wrzesień] = @Wrzesień, [Październik] = @Październik, [Listopad] = @Listopad, [Grudzień] = @Grudzień, [Styczeń] = @Styczeń, [Luty] = @Luty, [Marzec] = @Marzec, [Kwiecień] = @Kwiecień, [Maj] = @Maj, [Czerwiec] = @Czerwiec WHERE [ID] = @original_ID AND (([Imię] = @original_Imię) OR ([Imię] IS NULL AND @original_Imię IS NULL)) AND (([Nazwisko] = @original_Nazwisko) OR ([Nazwisko] IS NULL AND @original_Nazwisko IS NULL)) AND (([Lipiec] = @original_Lipiec) OR ([Lipiec] IS NULL AND @original_Lipiec IS NULL)) AND (([Sierpień] = @original_Sierpień) OR ([Sierpień] IS NULL AND @original_Sierpień IS NULL)) AND (([Wrzesień] = @original_Wrzesień) OR ([Wrzesień] IS NULL AND @original_Wrzesień IS NULL)) AND (([Październik] = @original_Październik) OR ([Październik] IS NULL AND @original_Październik IS NULL)) AND (([Listopad] = @original_Listopad) OR ([Listopad] IS NULL AND @original_Listopad IS NULL)) AND (([Grudzień] = @original_Grudzień) OR ([Grudzień] IS NULL AND @original_Grudzień IS NULL)) AND (([Styczeń] = @original_Styczeń) OR ([Styczeń] IS NULL AND @original_Styczeń IS NULL)) AND (([Luty] = @original_Luty) OR ([Luty] IS NULL AND @original_Luty IS NULL)) AND (([Marzec] = @original_Marzec) OR ([Marzec] IS NULL AND @original_Marzec IS NULL)) AND (([Kwiecień] = @original_Kwiecień) OR ([Kwiecień] IS NULL AND @original_Kwiecień IS NULL)) AND (([Maj] = @original_Maj) OR ([Maj] IS NULL AND @original_Maj IS NULL)) AND (([Czerwiec] = @original_Czerwiec) OR ([Czerwiec] IS NULL AND @original_Czerwiec IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Imię" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Lipiec" Type="String" />
                <asp:Parameter Name="original_Sierpień" Type="String" />
                <asp:Parameter Name="original_Wrzesień" Type="String" />
                <asp:Parameter Name="original_Październik" Type="String" />
                <asp:Parameter Name="original_Listopad" Type="String" />
                <asp:Parameter Name="original_Grudzień" Type="String" />
                <asp:Parameter Name="original_Styczeń" Type="String" />
                <asp:Parameter Name="original_Luty" Type="String" />
                <asp:Parameter Name="original_Marzec" Type="String" />
                <asp:Parameter Name="original_Kwiecień" Type="String" />
                <asp:Parameter Name="original_Maj" Type="String" />
                <asp:Parameter Name="original_Czerwiec" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Imię" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Lipiec" Type="String" />
                <asp:Parameter Name="Sierpień" Type="String" />
                <asp:Parameter Name="Wrzesień" Type="String" />
                <asp:Parameter Name="Październik" Type="String" />
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
                <asp:Parameter Name="Październik" Type="String" />
                <asp:Parameter Name="Listopad" Type="String" />
                <asp:Parameter Name="Grudzień" Type="String" />
                <asp:Parameter Name="Styczeń" Type="String" />
                <asp:Parameter Name="Luty" Type="String" />
                <asp:Parameter Name="Marzec" Type="String" />
                <asp:Parameter Name="Kwiecień" Type="String" />
                <asp:Parameter Name="Maj" Type="String" />
                <asp:Parameter Name="Czerwiec" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Imię" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Lipiec" Type="String" />
                <asp:Parameter Name="original_Sierpień" Type="String" />
                <asp:Parameter Name="original_Wrzesień" Type="String" />
                <asp:Parameter Name="original_Październik" Type="String" />
                <asp:Parameter Name="original_Listopad" Type="String" />
                <asp:Parameter Name="original_Grudzień" Type="String" />
                <asp:Parameter Name="original_Styczeń" Type="String" />
                <asp:Parameter Name="original_Luty" Type="String" />
                <asp:Parameter Name="original_Marzec" Type="String" />
                <asp:Parameter Name="original_Kwiecień" Type="String" />
                <asp:Parameter Name="original_Maj" Type="String" />
                <asp:Parameter Name="original_Czerwiec" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <h3>Media</h3>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="media" class="table table-hover" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Miesiąc" HeaderText="Miesiąc" SortExpression="Miesiąc" />
            <asp:BoundField DataField="Woda_zimna" HeaderText="Woda_zimna" SortExpression="Woda_zimna" />
            <asp:BoundField DataField="Woda_ciepła" HeaderText="Woda_ciepła" SortExpression="Woda_ciepła" />
            <asp:BoundField DataField="Prąd" HeaderText="Prąd" SortExpression="Prąd" />
            <asp:BoundField DataField="Gaz" HeaderText="Gaz" SortExpression="Gaz" />
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

        <asp:SqlDataSource ID="media" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" DeleteCommand="DELETE FROM [Media] WHERE [ID] = @original_ID AND (([Miesiąc] = @original_Miesiąc) OR ([Miesiąc] IS NULL AND @original_Miesiąc IS NULL)) AND (([Woda_zimna] = @original_Woda_zimna) OR ([Woda_zimna] IS NULL AND @original_Woda_zimna IS NULL)) AND (([Woda_ciepła] = @original_Woda_ciepła) OR ([Woda_ciepła] IS NULL AND @original_Woda_ciepła IS NULL)) AND (([Prąd] = @original_Prąd) OR ([Prąd] IS NULL AND @original_Prąd IS NULL)) AND (([Gaz] = @original_Gaz) OR ([Gaz] IS NULL AND @original_Gaz IS NULL))" InsertCommand="INSERT INTO [Media] ([Miesiąc], [Woda_zimna], [Woda_ciepła], [Prąd], [Gaz]) VALUES (@Miesiąc, @Woda_zimna, @Woda_ciepła, @Prąd, @Gaz)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Media]" UpdateCommand="UPDATE [Media] SET [Miesiąc] = @Miesiąc, [Woda_zimna] = @Woda_zimna, [Woda_ciepła] = @Woda_ciepła, [Prąd] = @Prąd, [Gaz] = @Gaz WHERE [ID] = @original_ID AND (([Miesiąc] = @original_Miesiąc) OR ([Miesiąc] IS NULL AND @original_Miesiąc IS NULL)) AND (([Woda_zimna] = @original_Woda_zimna) OR ([Woda_zimna] IS NULL AND @original_Woda_zimna IS NULL)) AND (([Woda_ciepła] = @original_Woda_ciepła) OR ([Woda_ciepła] IS NULL AND @original_Woda_ciepła IS NULL)) AND (([Prąd] = @original_Prąd) OR ([Prąd] IS NULL AND @original_Prąd IS NULL)) AND (([Gaz] = @original_Gaz) OR ([Gaz] IS NULL AND @original_Gaz IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Miesiąc" Type="String" />
                <asp:Parameter Name="original_Woda_zimna" Type="Decimal" />
                <asp:Parameter Name="original_Woda_ciepła" Type="Decimal" />
                <asp:Parameter Name="original_Prąd" Type="Decimal" />
                <asp:Parameter Name="original_Gaz" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
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
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Miesiąc" Type="String" />
                <asp:Parameter Name="original_Woda_zimna" Type="Decimal" />
                <asp:Parameter Name="original_Woda_ciepła" Type="Decimal" />
                <asp:Parameter Name="original_Prąd" Type="Decimal" />
                <asp:Parameter Name="original_Gaz" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <h3>Opłaty</h3>
    
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="opłaty" ForeColor="#333333" GridLines="None" class="table table-hover">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Miesiąc" HeaderText="Miesiąc" SortExpression="Miesiąc" />
            <asp:BoundField DataField="Woda_zimna" HeaderText="Woda_zimna" SortExpression="Woda_zimna" />
            <asp:BoundField DataField="Woda_ciepła" HeaderText="Woda_ciepła" SortExpression="Woda_ciepła" />
            <asp:BoundField DataField="Prąd" HeaderText="Prąd" SortExpression="Prąd" />
            <asp:BoundField DataField="Gaz" HeaderText="Gaz" SortExpression="Gaz" />
            <asp:BoundField DataField="Suma_kosztów" HeaderText="Suma_kosztów" SortExpression="Suma_kosztów" />
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

        <asp:SqlDataSource ID="opłaty" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] 
                SET [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty].[Woda_zimna] = Media.[Woda_zimna] * 2,
                [dbo].[Opłaty].[Woda_ciepła] = Media.[Woda_ciepła] * 2,
                [dbo].[Opłaty].[Prąd] = Media.[Prąd] * 2,
                [dbo].[Opłaty].[Gaz] = Media.[Gaz] * 2
                FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]
                Where dbo.Opłaty.ID = dbo.Media.ID;
                UPDATE [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Opłaty] 
                SET [dbo].[Opłaty].[Suma_kosztów] = Opłaty.Woda_ciepła + Opłaty.Woda_zimna +Opłaty.Prąd + Opłaty.Gaz
                FROM [C:\PROGRAM FILES\MICROSOFT SQL SERVER\MSSQL12.SQLEXPRESS\MSSQL\DATA\DB.MDF].[dbo].[Media]
                Where dbo.Opłaty.ID = dbo.Media.ID; SELECT * FROM [Opłaty]"></asp:SqlDataSource>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
</asp:Content>

