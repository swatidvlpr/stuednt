<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="employesalarylist.aspx.cs" Inherits="admin_employesalarylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
    <tr>
        <td>
            &nbsp;</td>
        <td width="5">
            &nbsp;</td>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <strong>Month Wise:</strong></td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="00">---Select month----</asp:ListItem>
                <asp:ListItem Value="01">Jan</asp:ListItem>
                <asp:ListItem Value="02">Feb</asp:ListItem>
                <asp:ListItem Value="03">March</asp:ListItem>
                <asp:ListItem Value="04">Aprl</asp:ListItem>
                <asp:ListItem Value="05">May</asp:ListItem>
               <asp:ListItem Value="06">Jun</asp:ListItem>
                <asp:ListItem Value="07">July</asp:ListItem>
                <asp:ListItem Value="08">Agust</asp:ListItem>
                <asp:ListItem Value="09">Sept</asp:ListItem>
                <asp:ListItem Value="10">Oct</asp:ListItem>
                <asp:ListItem Value="11">Nov</asp:ListItem>
                <asp:ListItem Value="12">Dec</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
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
            OR</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <strong>Year Wise:</strong></td>
        <td>
            &nbsp;</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">



            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-weight: 700" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" 
                onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
                AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging"><FooterStyle Font-Bold="true" BackColor="#61A6F8" ForeColor="black" />
                <AlternatingRowStyle BackColor="White" /> 
                <Columns>
                 <asp:TemplateField HeaderText="Sl No" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:BoundField DataField="Emp_id" HeaderText="Employee Id" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" 
                        DataFormatString="{0:n}" />

                   <%-- <asp:BoundField DataField="course_fee" HeaderText="Course Fee" />--%>

                    <asp:TemplateField  HeaderText="Salary Month">
                      <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("Salary_month") %>'/>
                  <%--    <asp:Label ID="lblLocation" runat="server" Text='<%#Eval("course_fee","{0:n}") %>'/>--%>
                      </ItemTemplate>
                      <%-- <FooterTemplate>
                        <asp:Label ID="lbltxttotal" runat="server" Text="Total Amount"/>
                         </FooterTemplate>--%>
                         </asp:TemplateField>



                  <%--  <asp:BoundField DataField="paidmoney" HeaderText="PaidMoney" />--%>
                    <asp:TemplateField HeaderText="total_working">
                   
                    
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("total_working") %>'></asp:Label>
                    
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:Label ID="lblTotal" runat="server" />
                    </FooterTemplate>
                    
                    
                    </asp:TemplateField>
                    <asp:BoundField DataField="working_for" HeaderText="Working For" />
                    <asp:BoundField DataField="total_leavs" HeaderText="Total Leavs" />
                    <asp:BoundField DataField="unpaid_leavs" HeaderText="Unpaid_Leavs" />

                     <asp:BoundField DataField="leavs_price" HeaderText="Leavs_Price" 
                        DataFormatString="{0:n}" />


                    <%--  <asp:BoundField DataField="total_deduct_sal" HeaderText="Total Deduct Sal" />--%>
                      <asp:TemplateField HeaderText="Total Deduct Sal" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%#Eval("total_deduct_sal","{0:n}") %>'></asp:Label>
                      </ItemTemplate>
                      <FooterTemplate>Total</FooterTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Sub Total" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%#Eval("Sub_total","{0:n}")%>'></asp:Label>
                      </ItemTemplate>
                      <FooterTemplate>
                          <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                      
                      </FooterTemplate>
                      </asp:TemplateField>
                      <%-- <asp:BoundField DataField="Sub_total" HeaderText="Sub Total" />--%>
                       
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
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
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
    </tr>
</table>
</asp:Content>

