<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="staff_attanceshow.aspx.cs" Inherits="Admin_staff_attanceshow"  EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
                          
         /*th, td {
border:1px solid  #7bb5ca;
padding:6px;
font:normal 14px/16px arial ;
}*/
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">

<tr>
<td align="right" width="50">Id:</td>
<td width="100">
        
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
            </asp:DropDownList>
        
        </td>
<td width="200" align="center">And </td>
<td align="right" width="100px">
        
            <asp:Label ID="Label3" runat="server" Text="Month:"></asp:Label>
        
        </td>
<td width="200">
        
            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
               <asp:ListItem Value="0">---Select Month---</asp:ListItem>
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
<td align="center" width="100px">And</td>
<td>Year:</td>
<td>
        
            <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
                <asp:ListItem Value="0">--Select Year--</asp:ListItem>
            </asp:DropDownList>
        
        </td>
</tr>

<tr>
        <td align="center" colspan="8" height="20">
            &nbsp;</td>
    </tr>

<tr>
        <td align="center" colspan="8" height="50">
            <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                BorderStyle="Solid" Height="40px" onclick="Button1_Click" Text="Search" 
                Width="80px" />
        &nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Black" 
                BorderStyle="Solid" Height="40px" onclick="Button3_Click" Text="Excel" 
                Width="80px" />
                &nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                BorderStyle="Solid" Height="40px" onclick="Button2_Click" Text="Reset" 
                Width="80px" />
        </td>
    </tr>

<tr>
        <td align="center" colspan="8">
            &nbsp;</td>
    </tr>
<tr>
<td colspan="8" align="center" style="border:none;">
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowdatabound="GridView1_RowDataBound" ShowFooter="True" 
        Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
                <%--<asp:BoundField DataField="Outtime" HeaderText="OUT TIME" />--%>


          <%--  <asp:BoundField DataField="duration" HeaderText="Duration" />--%>



         <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
            <asp:BoundField DataField="Emp_Reg_ID" HeaderText="Id" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            <asp:BoundField DataField="Emp_Name" HeaderText="Name" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
           <%-- <asp:BoundField DataField="Emp_Designation" HeaderText="Designation" />--%>
          <%--  <asp:BoundField DataField="Emp_Contact_Number" HeaderText="Mobile No" />
            <asp:BoundField DataField="Emp_Email" HeaderText="Email Id" />--%>
            <asp:BoundField DataField="intime" HeaderText="In Time" >


                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>


                <asp:TemplateField HeaderText="Out Time" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                    <ItemTemplate>
                    
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Outtime") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    
                        <asp:Label ID="Label2" runat="server" Text="Total  Duration:"></asp:Label>
                    </FooterTemplate>

<FooterStyle HorizontalAlign="Right"></FooterStyle>

                    <HeaderStyle HorizontalAlign="Right" />

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:TemplateField>

                    <asp:TemplateField  HeaderText="Duration" ItemStyle-HorizontalAlign="Right" FooterStyle-HorizontalAlign="Right">
                      <ItemTemplate>
                      <asp:Label ID="lbltotal" runat="server" Text='<%#Eval("duration") %>'/>
                      </ItemTemplate>
                       <FooterTemplate>
                        <asp:Label ID="lbltxttotal" runat="server" Text="Total"/>
                         </FooterTemplate>

<FooterStyle HorizontalAlign="Right"></FooterStyle>

                        <HeaderStyle HorizontalAlign="Right" />

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                         </asp:TemplateField>



                <asp:BoundField DataField="Remark" HeaderText="Remark" >



                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>



            <asp:BoundField DataField="Crt_date" HeaderText="Date" 
                DataFormatString="{0:d}" >
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
      
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
      
    </asp:GridView></td>
</tr>
</table>
    
</asp:Content>

