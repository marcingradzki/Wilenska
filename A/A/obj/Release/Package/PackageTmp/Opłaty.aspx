<%@ Page Title="Opłaty" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Opłaty.aspx.cs" Inherits="A.Opłaty" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .alignleft {
	    float: left;
        }
        .alignright {
	        float: none;
            text-align: left;
        }
        .fontsize {
            font-size: x-large;
            text-align: center;
        }
        .center {
            text-align: center;
        }
    </style>
    <div class="row">
        <div class="alignleft" >
        <h1 ><span class="glyphicon glyphicon-info-sign"></span> <%:  Title %>.</h1>
        <h2 >Archiwum kosztów mieszkaniowych</h2>
        </div>
    </div>
        <br />
    <div  >    
        <div class="col-sm-4 alert alert-danger center" >
        <p class="fontsize"><strong>CZYNSZ I OPŁATY</strong></p>
        <p ><strong>Pieniądze należy wpłacać na konto: </strong></p>
        <p >79 1140 2004 0000 3702 7214 3544</p>
        <p >Sylwester Sadza</p>
        <p >Bobownia 2</p>
        <p >98-240</p>
        <p >Szadek</p>
        </div>
        
        

        <div class="col-sm-4 alert alert-danger center" >
        <p class="fontsize"><strong>INTERNET</strong></p>
        <p ><strong>Pieniądze należy wpłacać na konto: </strong></p>
        <p >79 1020 3437 0000 1302 0070 5129</p>
        <p >Piotr Stachniuk</p>
        <p >Ochraniew 35</p>
        <p >98-220</p>
        <p >Zduńska Wola</p>
        </div>
        
        

        <div class="col-sm-4 alert alert-danger center" >
        <p class="fontsize"><strong>SKŁADKA</strong></p>
        <p ><strong>Pieniądze należy wpłacać na konto: </strong></p>
        <p >29 1240 3190 1111 0010 3419 9597</p>
        <p >Marta Rajska</p>
        <p >Graniczna 19/4</p>
        <p >99-300</p>
        <p >Kutno</p>
        </div>
    </div>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>   
    
</asp:Content>
