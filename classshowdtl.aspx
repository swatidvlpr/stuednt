<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="classshowdtl.aspx.cs" Inherits="admin_classshowdtl" %>

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
    <table class="style1">
        <tr>
            <td width="200">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td width="200">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2" rowspan="8" valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
                    AutoGenerateRows="False" GridLines="None" BorderStyle="Solid" 
                    BorderColor="Black">
                    <Fields>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <table width="600px" cellspacing="0" cellpadding="0" style="line-height:30px">
                        <tr>
                        <td class="brder">
                        Name:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name") %>'></asp:Label></td>
                        
                        </tr>

                         <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>


                          <tr>
                        <td class="brder">
                        Id:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Faculty_id") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Class") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("date") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       Subject:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Subject") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Chapter") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                           <tr>
                        <td class="brder">
                       Details:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("chapter_details") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>

                         <tr>
                        <td class="brder">
                       Intime:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("Intime") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        <tr>
                        <td class="brder">
                       Outime:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Outime") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                        <tr>
                        <td class="brder">
                       Duration:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("duration") %>'></asp:Label></td>
                        
                        </tr>
                           <tr>
                        <td>
                      
                        </td>
                        <td>
                        
                        
                        </tr>
                          <tr>
                        <td class="brder">
                       No of Classes:
                        </td>
                        <td class="brder">
                        
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("no_of_Class") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("PerClass","{0:n}") %>'></asp:Label></td>
                        
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
                        
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Totalpayment","{0:n}") %>'></asp:Label></td>
                        
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
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
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

