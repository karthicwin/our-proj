<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuperUserHome.aspx.cs" Inherits="CourierTrackingSystem.SuperUserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

        .ddlFormat {
            float: left;
            margin-right: 2%;
            margin-top: 2%;
        }

        table, td {
            padding: 3px;
        }
    </style>

    <div class="ddlFormat">
        <asp:Label ID="lblDdl" runat="server" Text="Pending Registration Requests"></asp:Label>
        <asp:DropDownList ID="ddlPending" runat="server">
        </asp:DropDownList>
        <asp:Button ID="btnlogin" CssClass="btnLogin" runat="server" Text="View full profile" style="height: 50px; width: 200px;" OnClick="btnlogin_Click1"/>
        <%--<input type="submit" class="btnLogin" value="Pending Registration Requests" style="height: 50px; width: 200px;"/>--%>
    </div>

    <table class="contenttable">
        <tr>
            <td>
                <h2 class="register-heading">Welcome Super User</h2>
                <br />
                <br />
            </td>
        </tr>

        <tr>
            <td>
                <%--<asp:DropDownList ID="ddlPending" runat="server">
                </asp:DropDownList>
                <input type="submit" class="btnLogin" value="Pending Registration Requests" style="height: 80px; width: 600px;" />--%>
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