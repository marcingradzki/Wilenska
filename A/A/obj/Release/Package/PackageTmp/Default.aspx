<%@ Page Title="Wileńska" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    .myStyle
    {
        background-color: #FF9175;
    }
    .hide
    {
        /*visibility: hidden;*/
    }
    .show
    {
        /*visibility: visible;*/
    }

    </style>
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script>
        //naglowek
        $(document).ready(function () {
            $("#jumbo, #oplaty, #media, #face, #z0, #z1, #z2, #z3, #z4").css("display", "none");
        })

        $(document).ready(function () {
            $("#jumbo").fadeIn(1000);
        });
        $(document).ready(function () {
            $("#oplaty").fadeIn(1500);
        });
        $(document).ready(function () {
            $("#media").fadeIn(2000);
        });
        $(document).ready(function () {
            $("#face").fadeIn(2500);
        });
        //tabelka
        $(document).ready(function () {
            
            $("#B").click(function () {
                $("#Tabelka").fadeToggle();
                $("#tableTitle").fadeToggle();
            });
        })

        //podtabelki
        $(document).ready(function () {
            $("#0").click(function () {
                $("#z0").fadeToggle();
            });
        });
        $(document).ready(function () {
            $("#1").click(function () {
                $("#z1").fadeToggle();
            });
        });
        $(document).ready(function () {
            $("#2").click(function () {
                $("#z2").fadeToggle();
            });
        });
        $(document).ready(function () {
            $("#3").click(function () {
                $("#z3").fadeToggle();
            });
        });
        $(document).ready(function () {
            $("#4").click(function () {
                $("#z4").fadeToggle();
            });
        });


        ////podtabelki
        //function changeClass(element) {
        //    var currentClassValue = element.className;

        //    if (currentClassValue == 'hide') {
        //        element.className = 'show';
        //        return;
        //    }
        //    else if (currentClassValue == 'show') {
        //        element.className = 'hide';
        //        return;
        //    }
        //}



        //function myFunction0() {
        //    //changeClass(z0);
        //    //$(document).ready(function () {
        //    //    $("#z0").fadeTo(500,1);
        //    //});
        //}
        
        //function myFunction1() {
           
        //}

        //function myFunction2() {
        //    changeClass(z2);
        //}

        //function myFunction3() {
        //    changeClass(z3);
        //}

        //function myFunction4() {
        //    changeClass(z4);
        //}
        
            






    </script>


    <div class="jumbotron" id="jumbo">
        <h1>Wileńska</h1>
        <p class="lead">Aktualne informacje na temat mediów naszego mieszkania</p>
        <p><button type="button" id="B" class="btn btn-primary btn-lg">Wyświetl status &raquo</button></p>
        
    </div>

    <p><asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        
    </p>

<%--    <script src="http://partner2.sms.priv.pl/" type="text/javascript"></script><noscript><a href="http://www.brameczka.pl/">darmowa bramka sms</a></noscript>--%>


    <div class="row">
        <div class="col-md-4" id="oplaty">
            <h2>Opłaty</h2>
            <p>
                Tutaj możesz sprawdzić archiwum opłat oraz wysokość czynszu w danym miesiącu.
                
            </p>
            <p>
                <a class="btn btn-default" href="Opłaty.aspx">Przejdź &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" id="media">
            <h2>Zużycie mediów</h2>
            <p>
                Zestawienie wskazań poszczególnych liczników na dany miesiąc.
            </p>
            <p>
                <a class="btn btn-default" href="Media.aspx">Przejdź &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" id="face">
            
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
