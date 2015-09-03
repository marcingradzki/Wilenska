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

    
    

    <h1><span class="glyphicon glyphicon-tint"></span> Media.</h1>
    <h2>Wykresy zużycia mediów</h2>

    <div class="row">
        <div class="alignleft">
            <asp:Chart ID="Chart1" runat="server" Height="400px" Width="600px" >
                
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
        <div class="alignright">
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
        <div class="alignleft">
            <asp:Chart ID="Chart3" runat="server" Height="400px" Width="600px">
            <Series>
                <asp:Series Name="Series3"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea3"></asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
        </div>
        <div class="alignright">
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

