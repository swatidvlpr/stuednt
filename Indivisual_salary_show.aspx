<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Indivisual_salary_show.aspx.cs" Inherits="admin_Indivisual_salary_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 19px;
        }
        .style3
        {
            height: 11px;
        }
       
        .style4
        {
            width: 111px;
        }
        .style5
        {
            height: 11px;
            width: 111px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  width="1000px">
        <tr>
            <td width="200" align="left">
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
            <td width="200" >
                &nbsp;</td>
            <td width="10">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td width="300">
                &nbsp;</td>
            <td width="35">
                &nbsp;</td>
            <td width="200">
                &nbsp;</td>
            <td width="500">
                &nbsp;</td>
            <td width="500">
                &nbsp;</td>
            <td width="500">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000" align="left" class="style2">
                Name:</td>
            <td>
                &nbsp;</td>
            <td width="200">
                <asp:DropDownList ID="DropDownList3" runat="server" style="font-weight: 700" 
                    Height="30px" Width="200px">
                <asp:ListItem Value="00">---Select Name---</asp:ListItem>
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
            <td>
                &nbsp;</td>
            <td align="center" class="style4">
                OR</td>
            <td>
                Emp Id:</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td align="center">
                And</td>
            <td align="center">
                Year:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-weight: 700" 
                    Height="30px" Width="200px" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
               
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000000" align="left" class="style3" width="10">
                </td>
            <td class="style3">
                </td>
            <td align="right" class="style3" colspan="2">
                </td>
            <td class="style5">
            </td>
            <td class="style3">
                </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000" align="left" width="150">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td align="left" class="style3" colspan="2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000" align="left" class="style3" width="10">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td align="right" class="style3" colspan="2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #000000" align="right" class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="right" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Search" ForeColor="Black" 
                    onclick="Button1_Click" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" Width="80px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onrowdatabound="GridView1_RowDataBound" ShowFooter="True" Width="110%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Emp_Reg_ID" HeaderText="Id" />
                        <asp:BoundField DataField="Emp_Name" HeaderText="Name" >
                        <ItemStyle Width="200px" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Emp_Contact_Number" HeaderText="Mobile Number" />
                        <asp:BoundField DataField="Salary" HeaderText="Basic Salary" 
                            DataFormatString="{0:n}" />
                        <asp:BoundField DataField="total_working" HeaderText="Total Working" />
                        <asp:BoundField DataField="working_for" HeaderText="Working for" />
                        <asp:BoundField DataField="total_leavs" HeaderText="Total Leavs" />
                        <asp:TemplateField HeaderText="Unpaid Leavs" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("unpaid_leavs") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>Total</FooterTemplate>
                        
<FooterStyle HorizontalAlign="Right"></FooterStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                        
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Subtotal Total" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                        <ItemTemplate>
                        
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Sub_total","{0:n}") %>'></asp:Label>
                        
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                        
                        </FooterTemplate>
                        
<FooterStyle HorizontalAlign="Right"></FooterStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                        
                        </asp:TemplateField>
                        <asp:BoundField DataField="month" HeaderText="Month" />
                        <asp:BoundField DataField="year" HeaderText="Year" />
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
                    
                </asp:GridView>
            </td>
            
        </tr>
    </table>
</asp:Content>

