<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Otherincomedtl.aspx.cs" Inherits="admin_Otherincomedtl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" >
<tr>
<td>

</td>
<td>

</td>
</tr>
<tr>
<td colspan="2">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="120px" Width="400px" 
        AutoGenerateRows="False" BorderStyle="Solid" GridLines="None" 
        DataKeyNames="fid">
        <Fields>
            <asp:TemplateField>
         <ItemTemplate>
         <table width="100%">
         <tr>
         <td align="right"><asp:HyperLink ID="HyperLink2" runat="server" Text="Back" NavigateUrl="~/admin/Otherincome.aspx"></asp:HyperLink></td>
         <td  align="left"> &nbsp;&nbsp;
             <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit" NavigateUrl='<%#Eval("fid","Otherincome.aspx?id={0}") %>'></asp:HyperLink></td>
         </tr>
         <tr>
         <td>Header Name:</td>
         <td>
             <asp:Label ID="Label1" runat="server" Text='<%#Eval("headernm") %>'></asp:Label></td>
         </tr>
         <tr>
         <td colspan="2"></td>
         </tr>
           <tr>
         <td>Amount:</td>
         <td>
             <asp:Label ID="Label2" runat="server" Text='<%#Eval("Amount","{0:n}") %>'></asp:Label></td>
         </tr>
         <tr>
         <td colspan="2"></td>
         </tr>
           <tr>
         <td>payment Type:</td>
         <td>
             <asp:Label ID="Label3" runat="server" Text='<%#Eval("payment_type") %>'></asp:Label></td>
         </tr>
         <tr>
         <td colspan="2"></td>
         </tr>
         <tr>
             <td>Details:</td>
         <td>
             <asp:Label ID="Label4" runat="server" Text='<%#Eval("chq_dd_dtl") %>'></asp:Label></td>
         </tr>
         <tr>
         <td colspan="2"></td>
         </tr>
           <tr>
         <td>Description:</td>
         <td>
         <p>
             <asp:Label ID="Label5" runat="server" Text='<%#Eval("remarks") %>'></asp:Label></p></td>
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

    &nbsp;&nbsp;</td>
<td>

</td>
</tr>
</table>
</asp:Content>

