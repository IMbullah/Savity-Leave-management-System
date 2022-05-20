<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="PavinAndIvanLeave.Apply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="design1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="applymain" class="applymain">
        <div id="applymain" class="loginMain">
            <asp:Label ID="Label1" runat="server" Text="Full Names"></asp:Label>
            <br />
            <asp:TextBox ID="txtfullname" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email Address"></asp:Label>
            <br />
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Position"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlposition" runat="server" DataSourceID="SqlPosition" DataTextField="Position" DataValueField="Position">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlPosition" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Position] FROM [UserData]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="lblduration" runat="server" Text="Duration"></asp:Label>
            <br />
            <asp:TextBox ID="txtduration" runat="server"></asp:TextBox>
            <br />
            <div class="divbtn">
                <asp:Button ID="btnapply" runat="server" Text="Apply" OnClick="btnapply_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" />
            </div>
            <br />
            <br />
        </div>
    </div>
</asp:Content>
