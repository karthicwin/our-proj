<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="CourierTrackingSystem.UserHome" %>
<asp:Content ID="ContentUserHome" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: auto;
            margin-left: 150px;
            text-align: center;
            margin-bottom:20px;
        }

        table, td {
            padding: 10px;
        }
        td {
        width:250px;
        height:200px;
        }
        .OfferImages {
        width:245px;
        height:195px;
        padding:3px;
        }
    </style>

    <table class="contenttable">
        <tr>
            <td colspan="2">
                <h3 class="register-heading">Welcome <span><%= clients %></span></h3>
                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td >
               <%-- <asp:imageButton ID="offer1" runat="server" src="images/offer1.jpg" onmouseover="this.width='600px';this.height='500px'" 
                    onmouseout="this.width='600px';this.height='195px'" class="OfferImages " OnClick="offer1_Click"  />--%>
                 <a><img src="images/offer1.jpg" class="OfferImages "/></a>
            </td>
            <td >
                <a><img src="images/offer2.jpg" class="OfferImages "/></a>
            </td>
        </tr>

        <tr>
            <td >
                <img src="images/offer3.jpg"  class="OfferImages "/>
            </td>
            <td >
                <img src="images/offer4.png" class="OfferImages "/>
            </td>
        </tr>
    </table>  
</asp:Content>