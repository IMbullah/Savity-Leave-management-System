<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="PavinAndIvanLeave.create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginMain">
        <asp:Label ID="lblfullname" runat="server" Text="Full Names"></asp:Label>
        <br />
        <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfullname" ErrorMessage="All fields must be Entered" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblemail" runat="server" Text="Email Address"></asp:Label>
        <br />
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="All fields must be Entered" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Correct Email Address" ForeColor="Red">*</asp:RegularExpressionValidator>
        <br />
        <asp:Label ID="lblposition" runat="server" Text="Position"></asp:Label>
        <br />
        <asp:TextBox ID="txtposition" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtposition" ErrorMessage="All fields must be Entered" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="All fields must be Entered" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblconfirm" runat="server" Text="Confirm Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtconfirm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtconfirm" ErrorMessage="All fields must be Entered" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconfirm" ControlToValidate="txtpassword" ErrorMessage="Passwords do not match" ForeColor="Red">*</asp:CompareValidator>
        <br />
        <asp:Button ID="btnnew" runat="server" Text="Create New Account" OnClick="btnnew_Click" ValidationGroup="vg" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vg" />
        <br />
    </div>
</asp:Content>
