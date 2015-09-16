<%@ Page Title="Wileńska" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    .myStyle
    {
        background-color: #FF9175;
    }
    </style>

    <script>
   
        function myFunction0() {
            document.getElementById("0").innerHTML = "NULL";
        }

        function myFunction1() {
            document.getElementById("1").innerHTML = "NULL";
        }

        function myFunction2() {
            document.getElementById("2").innerHTML = "NULL";
        }

        function myFunction3() {
            document.getElementById("3").innerHTML = "NULL";
        }

        function myFunction4() {
            document.getElementById("4").innerHTML = "NULL";
        }

    </script>


    <div class="jumbotron">
        <h1>Wileńska</h1>
        <p class="lead">Aktualne informacje na temat mediów naszego mieszkania</p>
        <p><asp:LinkButton ID="MyLink" runat="server" Text="Wyświetl status &raquo" class="btn btn-primary btn-lg"  onClick="Test"></asp:LinkButton></p>
        <asp:Literal ID="tabela" runat="server" OnLoad="viewTable"></asp:Literal>
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
                <a class="btn btn-default" href="https://www.facebook.com/groups/902275869827568/">Przejdź &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
