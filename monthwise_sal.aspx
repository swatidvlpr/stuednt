<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="monthwise_sal.aspx.cs" Inherits="admin_monthwise_sal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 26px;
        }
        .style3
        {
            width: 68px;
        }
        .style4
        {
            width: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="color: #000000" align="right">
                &nbsp;</td>
            <td align="left" width="100">
                Id:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" style="font-weight: 700" 
                    Width="185px" Height="30px">
                <asp:ListItem Value="0">---Select Id----</asp:ListItem>
               
                </asp:DropDownList>
            </td>
            <td align="center">
                Or</td>
            <td align="center" width="100">
                Month :</td>
            <td align="center">
                <asp:DropDownList ID="DropDownList1" runat="server" style="font-weight: 700" 
                    Width="185px" Height="30px">
                <asp:ListItem Value="0">---Select Month----</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">Mar</asp:ListItem>
                <asp:ListItem Value="04">Apr</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
               <asp:ListItem Value="06">Jun</asp:ListItem>
                <asp:ListItem Value="07">Jul</asp:ListItem>
                <asp:ListItem Value="08">Aug</asp:ListItem>
                <asp:ListItem Value="09">Sep</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="center" class="style3">
                And</td>
            <td align="right" class="style3">
                Year :</td>
            <td align="right" class="style4">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-weight: 700" 
                    Width="185px" Height="30px">
               
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000000">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="10">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" onclick="Button1_Click" Text="Search" 
                    Width="80px" />
            &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                    BorderStyle="Solid" Height="40px" onclick="Button2_Click" Text="Reset" 
                    Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="10">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="10" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="700px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Emp_id" HeaderText="Id">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="salary" HeaderText="Salary">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payment_sal" HeaderText="Payment Salary">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="due_sal" HeaderText="Due">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Detail" NavigateUrl='<%#Eval("Emp_id","salary_dtl.aspx?id={0}") %>'></asp:HyperLink>
                        </ItemTemplate>
                        
                        </asp:TemplateField>
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

