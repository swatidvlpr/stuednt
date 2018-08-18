<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="facultyshowdtl.aspx.cs" Inherits="admin_facultyshowdtl" %>

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
                        
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Fuculty_id") %>'></asp:Label></td>
                        
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
                      Designation:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("designation") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                      Address:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("address") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Mobile No:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("mobileno") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Alternat Mobile No:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("alternat_mobno") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                           <tr>
                        <td class="brder">
                       Email Id:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("emailid") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>     <tr>
                        <td class="brder">
                     Date Of Joining:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Date_Of_Joining") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                        
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                            <tr>
                        <td class="brder">
                     Class:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("Class") %>'></asp:Label></td>
                        
                        </tr>
                         <tr>
                        <td class="brder">
                       Subject:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("subject") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        <tr>
                        <td class="brder">
                       Chapter:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Chapter") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("total_classes") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                     Fee Per class:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("fee_per_clsses","{0:n}") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("total_payment","{0:n}") %>'></asp:Label></td>
                        
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

