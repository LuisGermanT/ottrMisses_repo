<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ottrMisses._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="UpdatePanel1">
        <ContentTemplate>
            <p></p>
            <div class="jumbotron">
                <table style="width: 100%">
                    <tr>
                        <th style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/honeywell_ottr.png" Width="800px" ImageAlign="AbsMiddle" />
                        </th>
                    </tr>
                </table>
                <p></p>
                <center>
                <table style="width: 60%">
                    <tr>
                        <th rowspan="4">
                            <asp:Label ID="Label1" runat="server" Text="OTTR" Font-Size="XX-Large" ForeColor="#C20406"></asp:Label>
                        </th>
                        <th style="text-align: right">
                            <asp:Label ID="Label2" runat="server" Text="Total orders:" Font-Size="Large"></asp:Label>
                        </th>
                        <th style="text-align: center">
                            <asp:Label ID="labelTotal" runat="server" Text="0" Font-Size="Large"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th style="text-align: right">
                            <asp:Label ID="Label3" runat="server" Text="OnTime:" Font-Size="Large"></asp:Label>
                        </th>
                        <th style="text-align: center">
                            <asp:Label ID="labelHit" runat="server" Text="0" Font-Size="Large"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th style="text-align: right">
                            <asp:Label ID="Label4" runat="server" Text="Misses:" Font-Size="Large"></asp:Label>
                        </th>
                        <th style="text-align: center">
                            <asp:Label ID="labelMisses" runat="server" Text="0" Font-Size="Large"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                        <th style="text-align: right">
                            <asp:Label ID="Label5" runat="server" Text="OTTR:" Font-Size="Large"></asp:Label>
                        </th>
                        <th style="text-align: center">
                            <asp:Label ID="labelPercent" runat="server" Text="0%" Font-Size="Large"></asp:Label>
                        </th>
                    </tr>
                </table>
                    </center>
            </div>
            <p></p>
            <div class="jumbotron">
                <table style="width: 100%" >
                    <tr>
                        <th style="text-align: center">
                            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="METRIC" Font-Size="Large" Height="35px" Theme="Moderno" Width="250px" OnClick="ASPxButton1_Click"></dx:ASPxButton>
                        </th>
                        <th style="text-align: center">
                            <dx:ASPxButton ID="ASPxButton2" runat="server" Text="REPORT" Font-Size="Large" Height="35px" Theme="Moderno" Width="250px" OnClick="ASPxButton2_Click"></dx:ASPxButton>
                        </th>
                        <th style="text-align: center">
                            <dx:ASPxButton ID="ASPxButton3" runat="server" Text="EXPORT CSV" Font-Size="Large" Height="35px" Theme="Moderno" Width="250px" OnClick="ASPxButton3_Click"></dx:ASPxButton>
                        </th>
                    </tr>
                </table>
            </div>
            <p>

            </p>
            <div class="jumbotron">

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>