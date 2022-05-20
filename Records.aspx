<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Records.aspx.cs" Inherits="PavinAndIvanLeave.Records" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginMain">
        <asp:Label ID="Label1" runat="server" Text="Employees on Leave"></asp:Label>
        <br />
            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                    </td> 
                    
                        <td class="auto-style3">  
                        <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
                        </td>
                    
                        <td class="auto-style3">  
                        <asp:Label ID="Label6" runat="server" Text="Duration"></asp:Label>
                        </td>  
                    
                </tr>   
                </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LeaveId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="LeaveId" HeaderText="LeaveId" ReadOnly="True" SortExpression="LeaveId" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Leave]"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
