<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPackage.aspx.cs" Inherits="CourierTrackingSystem.UserPackage" %>
<asp:Content ID="ContentUserProfileNew" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .contenttable {
            margin-top: 80px;
            margin-left: 250px;
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
            padding: 5%;
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
                case "Register": document.getElementById('Register').style.display = '';
                    document.getElementById('View').style.display = 'none';
                    break;
                case "View": document.getElementById('View').style.display = '';
                    document.getElementById('Register').style.display = 'none';
                    break;
            }
        }
    </script>

    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" onclick="java_script_:editTablerows(this.options[this.selectedIndex].value)">
        <li class="nav-item">
            <a class="nav-link active" id="Register-tab" data-toggle="tab" href="#Register" role="tab" aria-controls="Register" aria-selected="true">Register</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="View_tab" data-toggle="tab" href="#View" role="tab" aria-controls="View" aria-selected="false" runat="server" 
                onServerClick="tab_ServerClick">View</a>
        </li>
    </ul>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="Register" role="tabpanel" aria-labelledby="Register-tab" style="display: none">
        <table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">Package Registration</h3>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>                    
                    <asp:TextBox ID="txtCustomerId" runat="server" CssClass="form-control-package" placeholder="Customer_id *"></asp:TextBox>
                </td>
                <td>                    
                    <asp:TextBox ID="txtPackageWt" runat="server" CssClass="form-control-package" placeholder="Package Weight *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>                    
                    <asp:TextBox ID="txtSenderAddress" runat="server" CssClass="form-control-package" placeholder="Sender Address"></asp:TextBox>
                </td>
                <td>                    
                    <asp:TextBox ID="txtCorrAddress" runat="server" CssClass="form-control-package" placeholder="Receiver Address *"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>                    
                    <asp:TextBox ID="txtCost" runat="server" CssClass="form-control-package" placeholder="Cost *"></asp:TextBox>
                </td>
                <td>                    
                    <asp:Button ID="btnUserPackage" runat="server" Text="Register" CssClass="btnLogin" OnClick="btnUserPackage_Click" />
                </td>
            </tr>
        </table>
    </div>

<!----------------------------------------------------------------------------------------------------------------------------------------------------->

    <div class="tab-pane fade show active" id="View" role="tabpanel" aria-labelledby="View_tab" style="display: none">
        <div>
            <asp:DropDownList ID="ddlPackagePending" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
        </div>
        
        <asp:GridView ID="gdvUserPackages" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField  HeaderText="Customer ID">
                    <ItemTemplate>
                        <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("customer_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField  HeaderText="Sender Address">
                    <ItemTemplate>
                        <asp:Label ID="lblSenderAddress" runat="server" Text='<%# Eval("sender_Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField  HeaderText="Receiver Address">
                    <ItemTemplate>
                        <asp:Label ID="lblReceiverAddress" runat="server" Text='<%# Eval("receiver_Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField  HeaderText="Package Weight">
                    <ItemTemplate>
                        <asp:Label ID="lblPackageWeight" runat="server" Text='<%# Eval("package_Weight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField  HeaderText="Cost">
                    <ItemTemplate>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("cost") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <%--<table class="contenttable">
            <tr>
                <td colspan="2">
                    <h3 class="register-heading">View Registration</h3>
                    <br />
                    <br />
                </td>
            </tr>

            <asp:DropDownList ID="ddlViewPackages" runat="server">                
            </asp:DropDownList>

            <tr>
                <td>
                    <label style="font-weight: 700">Consignment_Id </label>
                    <br />                    
                    <asp:TextBox ID="txtConsignmentView" runat="server" CssClass="form-control-package" placeholder="Consignment_Id " 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Accept Date</label><br />                    
                    <asp:TextBox ID="txtAcceptDateView" runat="server" CssClass="form-control-package" placeholder="Accept Date" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Package Weight</label><br />                    
                    <asp:TextBox ID="txtPackageWtView" runat="server" CssClass="form-control-package" placeholder="Package Weight" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Cost</label><br />                    
                    <asp:TextBox ID="txtCostView" runat="server" CssClass="form-control-package" placeholder="Cost" ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Sender Address </label>
                    <br />                    
                    <asp:TextBox ID="txtSenderAddressView" runat="server" CssClass="form-control-package" placeholder="Sender Address " 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Receiver Address </label>
                    <br />                    
                    <asp:TextBox ID="txtReceiverAddressView" runat="server" CssClass="form-control-package" placeholder="Receiver Address " 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Employee_id</label><br />                    
                    <asp:TextBox ID="txtEmployeeIdView" runat="server" CssClass="form-control-package" placeholder="Employee_id" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Customer_id</label><br />                    
                    <asp:TextBox ID="txtCustomerIdView" runat="server" CssClass="form-control-package" placeholder="Customer_id" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label style="font-weight: 700">Current Location</label><br />                    
                    <asp:TextBox ID="txtCurrentLocationView" runat="server" CssClass="form-control-package" placeholder="Current Location" 
                        ReadOnly="true"></asp:TextBox>
                </td>
                <td>
                    <label style="font-weight: 700">Package Status</label><br />                    
                    <asp:TextBox ID="txtPackageStatusView" runat="server" CssClass="form-control-package" placeholder="Package Status" 
                        ReadOnly="true"></asp:TextBox>
                </td>
            </tr>
        </table>--%>
    </div>
</asp:Content>