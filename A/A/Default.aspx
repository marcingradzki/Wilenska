<%@ Page Title="Wileńska" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    .myStyle
    {
        background-color: #FF9175;
    }
    .smallTable
    {
        width: 100%;
        margin-left: auto; 
        margin-right: auto;
        display:table-row;
        
    }
    .myTable
    {
        border-spacing: 0px;
        border-collapse: collapse;
        display:block;
        width: 100%;
        
    }
    .hide
    {
        visibility: hidden;
    }
    .show
    {
        visibility: visible;
    }

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>

       //funkcja jQuery ukrywająca tabelę
       /* $(document).ready(function () {
            $("#0").click(function () {
                $("#z0").hide();
            });
            $("#0").click(function () {
                $("#z0").show();
            });
        });
        */

        function changeClass(element) {
            var currentClassValue = element.className;

            if (currentClassValue == 'hide') {
                element.className = 'show';
                return;
            }
            else if (currentClassValue == 'show') {
                element.className = 'hide';
                return;
            }
        }

        function myFunction0() {
            changeClass(z0);
            
        }
        
        function myFunction1() {
            changeClass(z1);
        }

        function myFunction2() {
            changeClass(z2);
        }

        function myFunction3() {
            changeClass(z3);
        }

        function myFunction4() {
            changeClass(z4);
        }
        
    </script>


    <div class="jumbotron">
        <h1>Wileńska</h1>
        <p class="lead">Aktualne informacje na temat mediów naszego mieszkania</p>
        <p><asp:LinkButton ID="MyLink" runat="server" Text="Wyświetl status &raquo" onClick="viewTable" class="btn btn-primary btn-lg"></asp:LinkButton></p>
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
