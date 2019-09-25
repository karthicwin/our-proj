<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="CourierTrackingSystem.StaffProfile" %>
<asp:Content ID="ContentStaffProfile" ContentPlaceHolderID="MainContent" runat="server">
 
    <style type="text/css">
        .contenttable {
            margin-top: 80px;
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
            }
        }
    </script>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

   <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" onclick="java_script_:editTablerows(this.options[this.selectedIndex].value)" >
        <li class="nav-item">
            <a class="nav-link active" id="Edit-tab" data-toggle="tab" href="#Edit" role="tab" aria-controls="Edit" aria-selected="false" >Edit</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="View-tab" data-toggle="tab" href="#View" role="tab" aria-controls="View" aria-selected="true" >View</a>
        </li>
    </ul>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="Edit" role="tabpanel" aria-labelledby="Edit-tab" style="display:none" >
      <table class="contenttable">
            <tr>
                <td colspan="2">
                   <h3 class="register-heading">Edit Profile</h3>
                     <br /><br />
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="First Name *" value="" />--%>
                    <asp:TextBox ID="txtStaffFName" runat="server" CssClass="form-control-registration" placeholder="First Name *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Last Name *" value="" />--%>
                    <asp:TextBox ID="txtStaffLName" runat="server" CssClass="form-control-registration" placeholder="Last Name *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Password *" value="" />--%>
                    <asp:TextBox ID="txtStaffPwd" runat="server" CssClass="form-control-registration" placeholder="Password *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Confirm Password *" value="" />--%>
                    <asp:TextBox ID="txtStaffCPwd" runat="server" CssClass="form-control-registration" placeholder="Confirm Password *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<select  id="genderStaff" name="Gender" class="form-control-registration" >
                        <option value="Male" class="form-control">Male</option>
                        <option value="female" class="form-control">Female</option>
                    </select>--%>
                    <asp:DropDownList ID="ddlStaffGender" runat="server" CssClass="form-control-registration">
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <%--<input  type="email" class="form-control-registration"  placeholder="Email " value="" />--%>
                    <asp:TextBox ID="txtStaffEmail" runat="server" CssClass="form-control-registration" placeholder="Email"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Contact Number" value="" />--%>
                    <asp:TextBox ID="txtStaffContactNumber" runat="server" CssClass="form-control-registration" placeholder="Contact Number"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="User ID *" value="" />--%>
                    <asp:TextBox ID="txtStaffUserId" runat="server" CssClass="form-control-registration" placeholder="User ID *"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Salary *" value="" />--%>
                    <asp:TextBox ID="txtStaffSalary" runat="server" CssClass="form-control-registration" placeholder="Salary *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Designation *" value="" />--%>
                    <asp:TextBox ID="txtStaffDesignation" runat="server" CssClass="form-control-registration" placeholder="Designation *"></asp:TextBox>
                </td>
             </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Permanent Address" value="" />--%>
                    <asp:TextBox ID="txtStaffPermanentAddress" runat="server" CssClass="form-control-registration" placeholder="Permanent Address *"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Correspondence Address *" value="" />--%>
                    <asp:TextBox ID="txtStaffCorrAddress" runat="server" CssClass="form-control-registration" placeholder="Correspondence Address *"></asp:TextBox>
                </td>
             </tr>

            <tr>
                <%--<td><input  type="text" class="form-control-registration"  placeholder="Login Type *" value="" /></td>--%>
                <td>
                    <asp:TextBox ID="txtStaffLoginType" runat="server" CssClass="form-control-registration" placeholder="Login Type *"></asp:TextBox>
                </td>
                <td>
                    <%--<input type="submit" class="btnLogin" value="Save" style="height:40px" />--%>
                    <asp:Button ID="btnStaffSave" runat="server" Text="Save" CssClass="btnLogin" />
                </td>
            </tr>
        </table>
    </div>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="View" role="tabpanel" aria-labelledby="View-tab" style="display:none" >
       <table class="contenttable">
            <tr>
                <td colspan="2">
                   <h3 class="register-heading">View Profile</h3>
                     <br /><br />
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="First Name *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffFnameView" runat="server" CssClass="form-control-registration" placeholder="First Name *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration" placeholder="Last Name *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffLnameView" runat="server" CssClass="form-control-registration" placeholder="Last Name *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Password *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffPwdView" runat="server" CssClass="form-control-registration" placeholder="Password *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="password" class="form-control-registration" placeholder="Confirm Password *" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCPwdView" runat="server" CssClass="form-control-registration" placeholder="Confirm Password *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <%--<select  id="genderStaffView" name="Gender" class="form-control-registration" disabled>
                        <option value="Male" class="form-control">Male</option>
                        <option value="female" class="form-control">Female</option>
                    </select>--%>
                    <asp:DropDownList ID="ddlStaffGenderView" runat="server" CssClass="form-control-registration">
                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <%--<input  type="email" class="form-control-registration"  placeholder="Email " value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffEmailView" runat="server" CssClass="form-control-registration" placeholder="Email *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Contact Number" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffContactNumberView" runat="server" CssClass="form-control-registration" placeholder="Contact Number *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="User ID *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffUserIdView" runat="server" CssClass="form-control-registration" placeholder="User ID *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Salary *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffSalaryView" runat="server" CssClass="form-control-registration" placeholder="Salary *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Designation *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffDesignationView" runat="server" CssClass="form-control-registration" placeholder="Designation *" 
                        ReadOnly="true"></asp:TextBox>
                </td>
             </tr>

             <tr>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Permanent Address" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffPermanentAddressView" runat="server" CssClass="form-control-registration" placeholder="Permanent Address" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <%--<input  type="text" class="form-control-registration"  placeholder="Correspondence Address *" value="" readonly="readonly"/>--%>
                    <asp:TextBox ID="txtStaffCorrAddressView" runat="server" CssClass="form-control-registration" placeholder="Correspondence Address" 
                        ReadOnly="true"></asp:TextBox>
                </td>
             </tr>

            <tr>
                <%--<td><input  type="text" class="form-control-registration"  placeholder="Login Type *" value="" readonly="readonly" /></td>--%>
                <asp:TextBox ID="txtStaffLoginTypeView" runat="server" CssClass="form-control-registration" placeholder="Login Type *" 
                        ReadOnly="true"></asp:TextBox>
            </tr>
        </table>      
    </div>
</asp:Content>