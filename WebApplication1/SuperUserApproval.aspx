<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuperUserApproval.aspx.cs" Inherits="CourierTrackingSystem.SuperUserApproval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <center><h1>Admin Registration approvals</h1></center>
    <asp:GridView ID="gdvSuperUser" runat="server" CssClass="gdviewSuperUser" AutoGenerateColumns="false" OnRowCommand="gdvSuperUser_RowCommand" 
        OnRowEditing="gdvSuperUser_RowEditing" OnRowCancelingEdit="gdvSuperUser_RowCancelingEdit" OnRowUpdating="gdvSuperUser_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label ID="lblFname" runat="server" Text='<%# Eval("first_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <asp:Label ID="lblLname" runat="server" Text='<%# Eval("last_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="lblGender" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Contact number">
                <ItemTemplate>
                    <asp:Label ID="lblContact" runat="server" Text='<%# Eval("contact_Number") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Salary">
                <ItemTemplate>
                    <asp:Label ID="lblSalary" runat="server" Text='<%# Eval("salary") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtSalary" runat="server" Text='<%# Eval("salary") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Designation">
                <ItemTemplate>
                    <asp:Label ID="lblDesignation" runat="server" Text='<%# Eval("designation") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtDesignation" runat="server" Text='<%# Eval("designation") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Permanent Address">
                <ItemTemplate>
                    <asp:Label ID="lblPermanentAddress" runat="server" Text='<%# Eval("permanent_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Correspondence Address">
                <ItemTemplate>
                    <asp:Label ID="lblCorrespondenceAddress" runat="server" Text='<%# Eval("correspondence_Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Accept" CommandName="Accept" CommandArgument="<%# Container.DataItemIndex %>" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Deny" CommandName="Deny" CommandArgument="<%# Container.DataItemIndex %>" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:CommandField ButtonType="Link" ShowEditButton="true" HeaderText="Action" />
        </Columns>
    </asp:GridView>
</asp:Content>