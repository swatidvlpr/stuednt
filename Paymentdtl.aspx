<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Paymentdtl.aspx.cs" Inherits="admin_Paymentdtl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 503px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
<tr>
<td></td>
<td class="style1"></td>
</tr>
<tr>

<td colspan="2">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
        Width="970px">
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle Font-Bold="true" BackColor="#990000" ForeColor="black" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
          <%--  <asp:BoundField DataField="Snm" HeaderText="Name" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>--%>
            <%-- <asp:BoundField DataField="course_fee" HeaderText="Course Fee" />--%>
            <%--  <asp:BoundField DataField="paidmoney" HeaderText="PaidMoney" />--%>
            <asp:TemplateField HeaderText="SN" >
                <ItemTemplate>
                    <%#GridView1.Rows.Count + 1%>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="Reg_id" HeaderText="Id" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField  HeaderText="Course Fee" FooterStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                <ItemTemplate>
                    <asp:Label ID="lblLocation" runat="server" Text='<%#Eval("course_fee","{0:n}") %>'/>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbltxttotal" runat="server" Text="Total Collection:"/>
                </FooterTemplate>
                <FooterStyle HorizontalAlign="Right"></FooterStyle>
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField FooterStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right">
                <%--<FooterTemplate>
                        <asp:Label ID="lblTotal" runat="server" />
                        </FooterTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("paidmoney","{0:n}") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lblTotal" runat="server" />
                </FooterTemplate>
                <HeaderTemplate>
                    Payment
                </HeaderTemplate>
                <FooterStyle HorizontalAlign="Right"></FooterStyle>
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:TemplateField>
            <asp:BoundField DataField="payment_type" HeaderText="Payment Type" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="chq_dd_no" HeaderText="Payment Details">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="due" HeaderText="Due" DataFormatString="{0:n}" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="date" HeaderText="Date" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Instalments" >
            <ItemStyle Width="200px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      
      
      
    </asp:GridView></td>
</tr>
<tr>
<td></td>
<td class="style1"></td>
</tr>
</table>
    
</asp:Content>

