<%@ Page Title="Opłaty" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Opłaty.aspx.cs" Inherits="A.Opłaty" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .alignleft {
	    float: left;
        }
        .alignright {
	        float: right;
            text-align: right;
        }
    </style>
    <div class="row">
        <div class="alignleft" >
        <h1 ><%: Title %>.</h1>
        <h2 >Archiwum kosztów mieszkaniowych</h2>
        </div>

        <br />
       
        <div class="alignright alert alert-danger " >
        <p ><strong>Pieniądze należy wpłacać na konto: </strong></p>
        <p >9876354132181</p>
        <p >Sylwester Sadza</p>
        <p >Bobownia 2</p>
        <p >98-230</p>
        <p >Szadek</p>
        </div>
    </div>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>   
    
</asp:Content>
