<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="salary_dtl.aspx.cs" Inherits="admin_salary_dtl" %>

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

<table width="100%">
<tr>
<td>

</td>
<td>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    AutoGenerateRows="False" GridLines="None" BorderStyle="Solid" 
                    BorderColor="Black">
                    <Fields>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <table width="600px" cellspacing="0" cellpadding="0" style="line-height:30px">
                        <tr>
                        <td class="brder" align="left">
                        Id:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Emp_Reg_ID") %>'></asp:Label></td>
                        
                        </tr>

                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>


                          <tr>
                        <td class="brder"  align="left">
                        Name:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Emp_Name") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder"  align="left">
                       Address:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Emp_Present_Address") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder"  align="left">
                      Pincode:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Emp_Present_Pin") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                           <tr>
                        <td class="brder"  align="left">
                      Mobile No:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label18" runat="server" Text='<%#Eval("mobileno2") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder"  align="left">
                       Dob:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Emp_DOB") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          
                          <tr>
                        <td class="brder"  align="left">
                       Email:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Emp_Email") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                           <tr>
                        <td class="brder"  align="left">
                       Gender:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Emp_Gender") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                             <tr>
                        <td class="brder"  align="left">
                      Designation:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Emp_Designation") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>


                     <tr>
                        <td class="brder"  align="left">
                      Total days month:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("total_days_month") %>'></asp:Label></td>
                        
                        </tr>
                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder"  align="left">
                      total Working days:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("total_working") %>'></asp:Label></td>
                        
                        </tr>
                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                           <tr>
                        <td class="brder"  align="left">
                      Working For:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("working_for") %>'></asp:Label></td>
                        
                        </tr>
                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                       <%--<tr>
                        <td class="brder">
                      Total Leaves:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("total_leavs") %>'></asp:Label></td>
                        
                        </tr>--%>

                        <tr>
                        <td class="brder"  align="left">
                      Total Leaves:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label17" runat="server" Text='<%#Eval("total_leavs") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder"  align="left">
                     Leavs price:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("leavs_price","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder"  align="left">
                      Paid Leaves:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("unpaid_leavs","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                           <tr>
                        <td class="brder"  align="left">
                      Advance:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Adv","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                            <tr>
                        <td class="brder"  align="left">
                      Other:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("other","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                             
                         <tr>
                        <td class="brder"  align="left">
                     Deduct Salary:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("total_deduct_sal","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                             <tr>
                        <td class="brder"  align="left">
                     Sub Total:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label19" runat="server" Text='<%#Eval("Sub_total","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>


                             <tr>
                        <td class="brder"  align="left">
                     Salary:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label20" runat="server" Text='<%#Eval("salary","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                        
                             <tr>
                        <td class="brder"  align="left">
                     Payment Salary:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label21" runat="server" Text='<%#Eval("payment_sal","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                            <tr>
                        <td class="brder"  align="left">
                     Due Salary:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label22" runat="server" Text='<%#Eval("due_sal","{0:n}") %>'></asp:Label></td>
                        
                        </tr>
                          <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                         <tr>
                        <td class="brder"  align="left">
                     Date:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label23" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
                        
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
                </asp:DetailsView>
</td>
<td>

</td>
</tr>

</table>
   
</asp:Content>

