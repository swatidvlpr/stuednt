<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Employeedtl_serch.aspx.cs" Inherits="admin_Employeedtl_serch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                 
       /*  th, td {
border:1px solid  #7bb5ca;
padding:6px;
font:normal 14px/16px arial ;
}
        
        
        .quick_enquiry_box_ddl1{
	width:110px;
	padding:4px 0 4px 6px;
	border:1px solid #cccccc;
	background:#dddddd url(images/input_bg1.png) repeat-x;
	font:normal 12px/18px "Trebuchet MS", Arial, Helvetica, sans-serif;
	color:#313131;
	margin:2px 0px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border-radius:2px;
}    */ 
    
    
        .style2
        {
            width: 435px;
        }
    
    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table cellpadding="1" cellspacing="1" align="center" width="70%">
<tr>
<td align="center">
<table align="center">
<tr>
<td>Employee Id:</td>
<td><asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
</tr>
</table>

</td>

</tr>
<tr>
<td align="center">OR</td>
</tr>
<tr>
<td align="center">
<table width="100%">
<tr>
<td width="100">

    Name:</td>
<td>

    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>

</td>
<td align="right" valign="middle" class="style2">

   

    And</td>
<td align="right" valign="middle" width="300">

    Date of Birth:</td>
<td align="left"><table>
            <tr>
            <td align="left" style="border:none;"><asp:DropDownList ID="ddlday" runat="server" Width="80px" >
                <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList></td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlmonth" runat="server" 
                    CssClass="q">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td style="border:none;">
                <asp:DropDownList ID="ddlyr" runat="server">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            
            
            </table>

</td>
</tr>

</table>


</td>
</tr>

<tr>
<td height="20" valign="middle" align="center">&nbsp;</td>
</tr>

<tr>
<td align="center" height="50">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                    BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" Height="40px" 
                    Width="80px" />
            &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                    BackColor="Yellow" BorderColor="Black" BorderStyle="Solid" Height="40px" 
                    Width="80px" />
            </td>
</tr>

<tr>
<td align="center">
                &nbsp;</td>
</tr>

<tr>
<td align="center" style="border:none;" >
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Emp_Reg_ID" ForeColor="#333333" GridLines="None" 
                    onrowdeleting="GridView1_RowDeleting" Width="1050px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                     <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        <asp:BoundField DataField="Emp_Reg_ID" HeaderText="ID" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Emp_Name" HeaderText="Name" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Current_designation" 
                            HeaderText="Designation" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Emp_Contact_Number" HeaderText="Number" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Emp_Email" HeaderText="Email Id" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Emp_Qualification" HeaderText="Qualification" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Detail" NavigateUrl='<%#Eval("Emp_Reg_ID","staffdtl.aspx?id={0}") %>'></asp:HyperLink>
                        </ItemTemplate>
                        
                        
                        </asp:TemplateField>
                       <%-- <asp:CommandField ShowDeleteButton="True" />--%>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 
                
                 
                </asp:GridView>
            </td>
</tr>

</table>



    
</asp:Content>

