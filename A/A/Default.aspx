<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    .myStyle
    {
        background-color: #FF9175;
    }
    </style>
    <div class="jumbotron">
        <h1>Wileńska</h1>
        <p class="lead">Aktualne informacje na temat mediów naszego mieszkania</p>
        <p><asp:LinkButton ID="MyLink" runat="server" OnClick="viewTable" Text="Wyświetl status &raquo" class="btn btn-primary btn-lg"  ></asp:LinkButton></p>
        
    </div>

    <p><asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    </p>

    <div class="row">
        <div class="col-md-4">
            <h2>Opłaty</h2>
            <p>
                Tutaj możesz sprawdzić archiwum opłat oraz wysokość czynszu w danym miesiącu.
                
            </p>
            <p>
                <a class="btn btn-default" href="Opłaty.aspx">Przejdź &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Zużycie mediów</h2>
            <p>
                Zestawienie wskazań poszczególnych liczników na dany miesiąc.
            </p>
            <p>
                <a class="btn btn-default" href="Media.aspx">Przejdź &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            
            <h2>Facebook</h2>
            <p>
                Przekierowanie do naszej grupy na Facebook'u. 
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Przejdź &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
