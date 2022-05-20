<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PavinAndIvanLeave.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #loginMain {
            height: 207px;
        }
    </style>
    <link href="design1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="loginMain" class="loginMain">
        <br />
    <asp:Label ID="lblemail" runat="server" Text="Email or Username"></asp:Label>
        <br />
<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="All fields are Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
<asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="All fields are Required" ForeColor="Red" ValidationGroup="vg">*</asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Btnlogin" runat="server" ForeColor="Green" Text="Login" OnClick="Btnlogin_Click1"/>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="vg" />
</div>
<br />
<br />
</asp:Content>
