<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Employee_salary_show.aspx.cs" Inherits="admin_Employee_salary_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">

<tr>
<td></td>
<td></td>
</tr>
<tr>
        <td align="right">
            Staff Name:</td>
        <td align="left">
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;
        </td>
    </tr>
<%--<tr>
        <td align="right">
            <asp:Label ID="Label1" runat="server" Text="Month:"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="0">---Select---</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">March</asp:ListItem>
                <asp:ListItem Value="04">Aprl</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
                <asp:ListItem Value="06">June</asp:ListItem>
                <asp:ListItem Value="07">July</asp:ListItem>
                <asp:ListItem Value="08">Aug</asp:ListItem>
                <asp:ListItem Value="09">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="11">Dec</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>--%>
<tr>
        <td align="right" class="style1">
        </td>
        <td align="left" class="style1">
            and</td>
    </tr>
<tr>
        <td align="right">
            Year:</td>
        <td align="left">
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="0">--Year--</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
<tr>
        <td align="right">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
<tr>
        <td align="right">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
        </td>
    </tr>
<tr>
        <td align="right">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
<tr>
<td colspan="2" align="center"><asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
         <asp:TemplateField HeaderText="Sl No" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                            </asp:TemplateField>
            <asp:BoundField DataField="Emp_Reg_ID" HeaderText="ID" />
            <asp:BoundField DataField="Emp_Name" HeaderText="NAME" />
            <asp:BoundField DataField="Emp_Contact_Number" HeaderText="MOBILE NO" />
            <asp:BoundField DataField="Emp_Email" HeaderText="EMAIL ID" />
            <asp:BoundField DataField="Emp_Designation" HeaderText="DESIGNATION" />
            <asp:BoundField DataField="intime" HeaderText="IN TIME" />
            <asp:BoundField DataField="Outtime" HeaderText="OUT TIME" />
            <asp:BoundField DataField="Crt_date" HeaderText="DATE" 
                DataFormatString="{0:d}" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
      
    </asp:GridView></td>
</tr>
</table>
</asp:Content>

