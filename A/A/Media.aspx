<%@ Page Title="Zużycie mediów" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Media.aspx.cs" Inherits="A.Media" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        .alignleft {
	    float: left;
        }
        .alignright {
	    float: right;
        }
    </style>

    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
        
    <script type="text/javascript">

        $(document).ready(function () {
            $("#info, #info1, #info2, #info3").css("display","none");
        })

        $(document).ready(function () {
            $("#info").fadeIn(1000);
        });
        $(document).ready(function () {
            $("#info2").fadeIn(1500);
        });
        $(document).ready(function () {
            $("#info1").fadeIn(2000);
        });
        $(document).ready(function () {
            $("#info3").fadeIn(2500);
        });
    </script>
    

    <h1><span class="glyphicon glyphicon-tint"></span> Media.</h1>
    <h2>Wykresy zużycia mediów</h2>

    <div class="row">
        <div class="alignleft" id="info">
            <asp:Chart ID="Chart1" runat="server" Height="400px" Width="600px" >
                
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
        <div class="alignright" id="info1">
            <asp:Chart ID="Chart2" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series Name="Series2"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
    </div>
    

    <br />
    <div class="row">
        <div class="alignleft" id="info2">
            <asp:Chart ID="Chart3" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series Name="Series3"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea3"></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
        <div class="alignright" id="info3">
            <asp:Chart ID="Chart4" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series Name="Series4"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea4"></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
    </div>

</asp:Content>

