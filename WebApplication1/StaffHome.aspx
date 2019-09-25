<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffHome.aspx.cs" Inherits="CourierTrackingSystem.StaffHome" %>
<asp:Content ID="ContentUserProfileNew" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: 80px;
            margin-left: 120px;
            text-align: center;
        }

        .btnLogin {
            float: right;
            margin-top: 10%;
            border: none;
            border-radius: 10px;
            background: #4B0082;
            color: antiquewhite;
            font-weight: 600;
            width: 100%;
            cursor: pointer;
        }

        table, td {
            padding: 3px;
        }
    </style>

    <table class="contenttable">
        <tr>
            <td>
                <h2 class="register-heading">Welcome Staff</h2>
                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" class="btnLogin" value="Package Registration Request Confirmation" style="height: 80px; width: 600px;" />
            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" class="btnLogin" value="Approved Registration Requests" style="height: 80px; width: 600px;" />
            </td>
        </tr>

        <tr>
            <td>
                <input type="submit" class="btnLogin" value="Rejected Registration Requests" style="height: 80px; width: 600px;" />
            </td>
        </tr>
        </table>
</asp:Content>