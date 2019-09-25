<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CourierTrackingSystem.UserProfile" %>
<asp:Content ID="ContentUserProfileNew"  ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: 150px;
            margin-left: 250px;
            text-align:center;
        }
        .btnLogin {
        float:right;
        margin-top:10%;
        border:none;
        border-radius:10px;
        background:	#4B0082; 
        color:antiquewhite;
        font-weight:600;
        width:100%;
      
        cursor:pointer;       
        }
        
        table, td {
        padding:5%;
        }
        .form-control-registration {
            display: block;
            width: 100%;
            height: 34px;
            padding: 8px;
            font-size: 12px;
            line-height: 1.428571429;
            color: #555555;
            /*vertical-align: middle;*/
            background-color: #ffffff;
            border: 1px solid #cccccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
            transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
        }
    </style>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <script type="text/javascript">
        function visibilityOfTablerows(event) {
            switch (event) {
                case "Edit": document.getElementById('Edit').style.display = '';
                    document.getElementById('Save').style.display = 'none';
                    break;
                case "Save": document.getElementById('Save').style.display = '';
                    document.getElementById('Edit').style.display = 'none';
                    break;
                default:

            }
        }
    </script>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

   <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" onclick="java_script_:editTablerows(this.options[this.selectedIndex].value)" >
       <li class="nav-item">
            <a class="nav-link" id="View-tab" data-toggle="tab" href="#View" role="tab" aria-controls="View" aria-selected="true" >View</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" id="Edit-tab" data-toggle="tab" href="#Edit" role="tab" aria-controls="Edit" aria-selected="false" >Edit</a>
        </li>        
    </ul>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="Edit" role="tabpanel" aria-labelledby="Edit-tab" style="display:none" >
       <table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">Welcome User</h3>
                    <br /><br />
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="First Name *" value="" />--%>
                    <asp:TextBox ID="txtUserFname" runat="server" CssClass="form-control-registration" placeholder="First Name *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Last Name *" value="" />--%>
                    <asp:TextBox ID="txtUserLname" runat="server" CssClass="form-control-registration" placeholder="Last Name *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Password *" value="" />--%>
                    <asp:TextBox ID="txtUserPwd" runat="server" CssClass="form-control-registration" placeholder="Password *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Confirm Password *" value="" />--%>
                    <asp:TextBox ID="txtUserCPwd" runat="server" CssClass="form-control-registration" placeholder="Confirm Password *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<select  id="genderEdit" name="Gender" class="form-control-registration">
                        <option value="Male" class="form-control-registration">Male</option>
                        <option value="female" class="form-control-registration">Female</option>
                    </select>--%>
                    <asp:DropDownList ID="ddlUserGender" runat="server" CssClass="form-control-registration">
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <%--<input  type="email" class="form-control-registration" placeholder="Email " value="" />--%>
                    <asp:TextBox ID="txtUserEmail" runat="server" CssClass="form-control-registration" placeholder="Email *"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Contact Number" value="" />--%>
                    <asp:TextBox ID="txtUserContactNumber" runat="server" CssClass="form-control-registration" placeholder="Contact Number *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="User ID *" value="" />--%>
                    <asp:TextBox ID="txtUserUserId" runat="server" CssClass="form-control-registration" placeholder="User ID *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <%--<input type="submit" class="btnLogin" value="Save " style="height:40px" />--%>
                    <asp:Button ID="btnUserSubmit" runat="server" CssClass="btnLogin" Text="Save" />
                </td>
            </tr>
        </table>
      
<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    </div>
    <div class="tab-pane fade show active" id="View" role="tabpanel" aria-labelledby="View-tab" style="display:none" >
       <table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">User Profile</h3>
                    <br /><br />
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="First Name *" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtUserFnameView" runat="server" CssClass="form-control-registration" placeholder="First Name *" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Last Name *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtUserLnameView" runat="server" CssClass="form-control-registration" placeholder="Last Name *" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Password *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtUserPwdView" runat="server" CssClass="form-control-registration" placeholder="Password *" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Confirm Password *" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtUserCPwdView" runat="server" CssClass="form-control-registration" placeholder="Confirm Password *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<select  id="gender" name="Gender" class="form-control-registration" disabled>
                        <option value="Male" class="form-control-registration">Male</option>
                        <option value="female" class="form-control-registration">Female</option>
                    </select>--%>
                    <asp:DropDownList ID="ddlUserGenderView" runat="server" CssClass="form-control-registration">
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <%--<input  type="email" class="form-control-registration" placeholder="Email " value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtUserEmailView" runat="server" CssClass="form-control-registration" placeholder="Email *" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Contact Number" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtUserContactNumberView" runat="server" CssClass="form-control-registration" 
                        placeholder="Contact Number *" ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="User ID *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtUserUserIdView" runat="server" CssClass="form-control-registration" 
                        placeholder="User ID *" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>            
        </table>      
    </div>
</asp:Content>