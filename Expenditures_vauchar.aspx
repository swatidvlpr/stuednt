<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Expenditures_vauchar.aspx.cs" Inherits="admin_Expenditures_vauchar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td width="20">
                &nbsp;</td>
            <td>
                Expenditure Show</td>
        </tr>
        <tr>
            <td width="250" style="color: #000000" align="right">
                Voucher No. :
            </td>
            <td>
                &nbsp;</td>
            <td><asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" ForeColor="Black" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    Height="150px" Width="320px" BorderColor="Black" BorderStyle="Solid" 
                    GridLines="None">
                    <Fields>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <table width="100%">
                        <tr>
                        <td>Voucher Type:</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Voucher_Type") %>'></asp:Label></td>
                        </tr>
                        
                        
                            <tr>
                        <td>Head:</td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Head") %>'></asp:Label></td>
                        </tr>
                             <tr>
                        <td>Description:</td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Description") %>'></asp:Label></td>
                        </tr>
                            <tr>
                        <td>Amount:</td>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Amount") %>'></asp:Label></td>
                        </tr>
                         <tr>
                        <td>Date DD:</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("ddate") %>'></asp:Label></td>
                        </tr>
                        </table>
                        
                        </ItemTemplate>
                        
                        
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

