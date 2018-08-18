<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Faculty_paymentdtl.aspx.cs" Inherits="admin_Faculty_paymentdtl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
         .brder
        {
            border-bottom:1px solid #666;
            
            
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
<tr>
<td width="200"></td>
<td></td>
<td width="200"></td>
</tr>
<tr>
<td></td>
<td><asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    AutoGenerateRows="False" GridLines="None" BorderStyle="Solid" 
                    BorderColor="Black">
                    <Fields>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <table width="600px" cellspacing="0" cellpadding="0" style="line-height:30px">
                        <tr>
                        <td class="brder">
                        Id:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Fac_id") %>'></asp:Label></td>
                        
                        </tr>

                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>


                          <tr>
                        <td class="brder">
                        Name:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder">
                       Total Classes:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Total_class") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                      Fee Per Class:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("fee_per_class","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Total Payment:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Total_payment","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Previous Due:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("previous_due","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                           <tr>
                        <td class="brder">
                       Total Balance:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("total_balance","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                         <tr>
                        <td class="brder">
                       Payment:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("payment","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        <tr>
                        <td class="brder">
                       Due:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("due","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        <tr>
                        <td class="brder">
                      Payment Type:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("paymenttype") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Payment Dtl:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("paymentdtl") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                           <tr>
                        <td class="brder">
                       Paid By:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("paidby") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                             <tr>
                        <td class="brder">
                      Date:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder">
                      Remark:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("Remark") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        </table>
                        
                        
                        </ItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                </asp:DetailsView></td>
<td></td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
</tr>

</table>

</asp:Content>

