<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffPackage.aspx.cs" Inherits="CourierTrackingSystem.StaffPackage" %>
<asp:Content ID="ContentStaffPackage" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: 60px;
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
        .form-control-package {
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
                    document.getElementById('View').style.display = 'none';
                    break;
                case "View": document.getElementById('View').style.display = '';
                    document.getElementById('Edit').style.display = 'none';
                    break;
            }
        }
    </script>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" onclick="java_script_:editTablerows(this.options[this.selectedIndex].value)">
        <li class="nav-item">
            <a class="nav-link active" id="Edit-tab" data-toggle="tab" href="#Edit" role="tab" aria-controls="Register" aria-selected="true">Edit</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="View-tab" data-toggle="tab" href="#View" role="tab" aria-controls="View" aria-selected="false">View</a>
        </li>
    </ul>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="Edit" role="tabpanel" aria-labelledby="Edit-tab" style="display: none">
        <table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">Edit Registration</h3>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Consignment_Id </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Consignment_Id *" value="" />--%>
                    <asp:TextBox ID="txtStaffConsignmentId" runat="server" CssClass="form-control-package" placeholder="Consignment_Id *"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Accept Date</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Accept Date * " value=""  />--%>
                    <asp:TextBox ID="txtStaffAcceptDate" runat="server" CssClass="form-control-package" placeholder="Accept Date *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Package Weight</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Package Weight " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffPackageWt" runat="server" CssClass="form-control-package" placeholder="Package Weight" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Cost</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Cost" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCost" runat="server" CssClass="form-control-package" placeholder="Cost" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Sender Address </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Sender Address " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffSenderAddress" runat="server" CssClass="form-control-package" placeholder="Sender Address"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Receiver Address </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Receiver Address " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffReceiverAddress" runat="server" CssClass="form-control-package" placeholder="Receiver Address" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Employee_id</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Employee_id *" value="" />--%>
                    <asp:TextBox ID="txtStaffEmployeeId" runat="server" CssClass="form-control-package" placeholder="Employee_id *"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Customer_id</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Customer_id" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCustomerId" runat="server" CssClass="form-control-package" placeholder="Customer_id" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Current Location</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Current Location" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCurrentLocation" runat="server" CssClass="form-control-package" placeholder="Current Location" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Package Status</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Package Status" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffPackageStatus" runat="server" CssClass="form-control-package" placeholder="Package Status" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                   <%--<input type="submit" class="btnLogin" value="Save" style="height: 40px" />--%>
                    <asp:Button ID="btnStaffSave" runat="server" CssClass="btnLogin" Text="Save" />
                </td>
                <td>
                   <%--<input type="submit" class="btnLogin" value="Accept" style="height: 40px" />--%>
                    <asp:Button ID="btnStaffAccept" runat="server" CssClass="btnLogin" Text="Accept" />
                </td>
            </tr>
        </table>
    </div>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="View" role="tabpanel" aria-labelledby="View-tab" style="display: none">
        <table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">View Registration</h3>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Consignment_Id </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Consignment_Id " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffConsignmentIdView" runat="server" CssClass="form-control-package" placeholder="Consignment_Id " 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Accept Date</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Accept Date " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffAcceptDateView" runat="server" CssClass="form-control-package" placeholder="Accept Date " 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Package Weight</label><br />
                    <input type="text" class="form-control-package" placeholder="Package Weight " value="" readonly="readonly" />
                </td>
                <td>
                    <label style="font-weight: 700">Cost</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Cost" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCostView" runat="server" CssClass="form-control-package" placeholder="Cost" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Sender Address </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Sender Address " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffSenderAddressView" runat="server" CssClass="form-control-package" placeholder="Sender Address" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Receiver Address </label>
                    <br />
                    <%--<input type="text" class="form-control-package" placeholder="Receiver Address " value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffReceiverAddressView" runat="server" CssClass="form-control-package" placeholder="Receiver Address" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Employee_id</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Employee_id" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffEmployeeIdView" runat="server" CssClass="form-control-package" placeholder="Employee_id" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Customer_id</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Customer_id" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCustomerIdView" runat="server" CssClass="form-control-package" placeholder="Customer_id" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Current Location</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Current Location" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffCurrentLocationView" runat="server" CssClass="form-control-package" placeholder="Current Location" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Package Status</label><br />
                    <%--<input type="text" class="form-control-package" placeholder="Package Status" value="" readonly="readonly" />--%>
                    <asp:TextBox ID="txtStaffPackageStatusView" runat="server" CssClass="form-control-package" placeholder="Package Status" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>