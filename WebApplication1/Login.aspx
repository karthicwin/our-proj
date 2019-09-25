<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CourierTrackingSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: 200px;
            margin-left: 250px;
            text-align:center;
        }

        .btnLogin {
            float:right;
            margin-top:10%;
            border:none;
            border-radius:10px;
            background:#4B0082; 
            color:antiquewhite;
            font-weight:600;
            width:50%;
            cursor:pointer;
        }
        
        .ddlLogin {
            cursor:pointer;
            width:50%;
            margin-top: 5%;
            margin-left: 5%;
        }
    </style>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script type="text/javascript">
        function successalert() {
            swal.fire({
                position: 'Center', type: 'error', title: "Login Unsuccessful!", timer: 1500
            })
        }
    </script>

    <asp:DropDownList CssClass="ddlLogin" ID="ddl" runat="server">
        <asp:ListItem Text="--Select role--" Value="0"></asp:ListItem>
        <asp:ListItem Text="Super User" Value="Super User"></asp:ListItem>        
        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
        <asp:ListItem Text="Staff" Value="Staff"></asp:ListItem>
        <asp:ListItem Text="User" Value="User"></asp:ListItem>
    </asp:DropDownList>

    <center><h1>Login</h1></center>
    <table class="contenttable">
        <tr>
            <td>                
                <input name="UserName" type="text" class="form-control" placeholder=" Name *" value="" /><br />
            </td>                
        </tr>

        <tr>
            <td>                
                <input type="password" name="Password" class="form-control" placeholder="Password *" />  <br />
                <input type="checkbox" value="checked" style="text-align:right; padding-top:5px"/> <label style="text-align:left">Remember me </label>
            </td>          
        </tr>
      
        <tr>
            <td>
                <asp:Button CssClass="btnLogin" runat="server" Text="Login" OnClick="Unnamed_Click"/>
                <%--<input type="submit" class="btnLogin" value="Login"/>--%>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

