<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffApproval.aspx.cs" Inherits="CourierTrackingSystem.StaffApproval" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center><h1>User Registeration approvals</h1></center>
    <asp:GridView ID="gdvStaffUser" runat="server" CssClass="gdviewSuperUser" AutoGenerateColumns="false" OnRowCommand="gdvStaffUser_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Customer Id">
                <ItemTemplate>
                    <asp:Label ID="lblFname" runat="server" Text='<%# Eval("customer_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Sender Address">
                <ItemTemplate>
                    <asp:Label ID="lblLname" runat="server" Text='<%# Eval("sender_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Reciever Address">
                <ItemTemplate>
                    <asp:Label ID="lblGender" runat="server" Text='<%# Eval("receiver_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Package Weight">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("package_Weight") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Cost">
                <ItemTemplate>
                    <asp:Label ID="lblContact" runat="server" Text='<%# Eval("cost") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <%--<asp:TemplateField HeaderText="Accept Date">
                <ItemTemplate>
                    <asp:Label ID="lblAcceptDate" runat="server" Text='<%# Eval("accept_Date") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtAcceptDate" runat="server" Text='<%# Eval("accept_Date") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Current Location">
                <ItemTemplate>
                    <asp:Label ID="lblCurrentLocation" runat="server" Text='<%# Eval("current_Location") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCurrentLocation" runat="server" Text='<%# Eval("current_Location") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Employee Id">
                <ItemTemplate>
                    <asp:Label ID="lblEmployeeId" runat="server" Text='<%# Eval("employee_Id") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmployeeId" runat="server" Text='<%# Eval("employee_Id") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>--%>
            
            <asp:TemplateField HeaderText="Accept">
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Accept" CommandName="Accept" CommandArgument="<%# Container.DataItemIndex %>"/>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Deny">
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Deny" CommandName="Deny" CommandArgument="<%# Container.DataItemIndex %>" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CommandField ButtonType="Link" ShowEditButton="true" HeaderText="Action" />
        </Columns>
    </asp:GridView>
    <h2>Upon Approval</h2>
    <table class="gdviewSuperUser" id="display">
        <tr>
            <td><asp:Label ID="lblAcceptDate" runat="server" Text="Accept Date"></asp:Label></td>
            <td><asp:TextBox ID="txtAcceptDate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCurrentLocation" runat="server" Text="Current Location"></asp:Label></td>
            <td><asp:TextBox ID="txtCurrentLocation" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmployeeId" runat="server" Text="Employee Id"></asp:Label></td>
            <td><asp:TextBox ID="txtEmployeeId" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button runat="server" ID="lblButton" Text="Update" OnClick="lblButton_Click"/></td>
        </tr>
    </table>
    


</asp:Content>
