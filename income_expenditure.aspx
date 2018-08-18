<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="income_expenditure.aspx.cs" Inherits="admin_income_expenditure" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
           /*  th, td {
border:1px solid  #7bb5ca;
padding:6px;
font:normal 14px/16px arial ;
}*/
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" align="center" width="90%">
    <%--<tr>
        <td width="100" colspan="8" style="border:none;">
            &nbsp;</td>
    </tr>--%>
    <tr>
        <td align="right">
            <strong>Month:</strong></td>
        <td align="right">
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="250px">
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
        <td align="center">
            And / OR</td>
        <td>
            &nbsp;</td>
        <td>
            <strong>Year:&nbsp; </strong></td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="250px">
                <asp:ListItem Value="0">---Select Year---</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="8" height="30">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="8">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-weight: 700" Text="Search" BackColor="Yellow" 
                BorderColor="Black" BorderStyle="Solid" Height="40px" Width="80px" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                style="font-weight: 700" Text="Excel" BackColor="Yellow" 
                BorderColor="Black" BorderStyle="Solid" Height="40px" Width="80px" />

        &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                style="font-weight: 700" Text="Reset" BackColor="Yellow" 
                BorderColor="Black" BorderStyle="Solid" Height="40px" Width="80px" />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="8" style="border:none;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowdatabound="GridView1_RowDataBound" ShowFooter="True" Width="100%"><FooterStyle Font-Bold="true" BackColor="#61A6F8" ForeColor="black" />
                <AlternatingRowStyle BackColor="White" /> 
                <Columns>
                    <%--<asp:BoundField DataField="type_trans" HeaderText="Type Trans" />--%>

                   <%-- <asp:BoundField DataField="course_fee" HeaderText="Course Fee" />--%>

                 <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>


                    <asp:BoundField DataField="name" HeaderText="Name" >


                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>


                    <asp:TemplateField HeaderText="Source">
                    <ItemTemplate>
                    
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("type_trans") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    
                        <asp:Label ID="Label2" runat="server" Text="Total:"></asp:Label>
                    </FooterTemplate>
                        <FooterStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:TemplateField>

                    <asp:TemplateField  HeaderText="Total Income">
                      <ItemTemplate>
                      <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("total","{0:n}") %>'/>
                      </ItemTemplate>
                       <FooterTemplate>
                        <asp:Label ID="lbltxttotal" runat="server" Text="Total Amount"/>
                         </FooterTemplate>
                         <FooterStyle HorizontalAlign="Right" />
                         <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                         </asp:TemplateField>



                
                    <asp:BoundField DataField="date" DataFormatString="{0:MM/dd/yyyy}" 
                        HtmlEncode="false" HeaderText="Date" >



                
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>



                
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               
            </asp:GridView>
            <br />
        </td>
    </tr>
    </table>
</asp:Content>

