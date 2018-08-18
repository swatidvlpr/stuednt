<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Paymentshow.aspx.cs" Inherits="admin_Paymentshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
            
         /* th, td {
border:1px solid  #7bb5ca;
padding:2px;
font:normal 14px/16px arial ;
}



 .test .ajax__calendar_body 
    {
      width:400px;
      height:100px;
      padding:20px;
    }
    
    .test .ajax__calendar_container 
    {padding:10px;position:absolute;cursor:default;width:180px;font-size:15px;text-align:center;font-family:tahoma,verdana,helvetica;background-color: lemonchiffon;border:1px solid #646464;
     
     
   } */
        
        
        
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td class="style3" width="200">
            </td>
            <td class="style3">
            </td>
            <td class="style3" width="20">
            </td>
            <td width="120">
            </td>
            <td class="style3">
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
                Id:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td align="center" class="style2">
                OR</td>
            <td class="style2">
                Date:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Month:</td>
            <td>
             
         
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
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
                And/OR</td>
            <td>
                Year:</td>
            <td>
             
         
          <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
              <asp:ListItem Value="0">---Select Year---</asp:ListItem>
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
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Submit" Width="80px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="6" style="border:none;">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="6" style="border:none;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField />
                        <asp:BoundField DataField="Fac_id" HeaderText="Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="Total_class" HeaderText="Total Class" />
                        <asp:BoundField DataField="fee_per_class" HeaderText="Fee Per Class" />
                        <asp:BoundField DataField="Total_payment" HeaderText="Total Payment" />
                        <asp:BoundField DataField="payment" HeaderText="Payment" />
                        <asp:BoundField DataField="due" HeaderText="Due" />
                        <asp:BoundField DataField="paymenttype" HeaderText="Payment Type" />
                        <asp:BoundField DataField="paymentdtl" HeaderText="Detail" />
                        <asp:BoundField DataField="paidby" HeaderText="Paidby" />
                        <asp:BoundField DataField="date" HeaderText="Date" />
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

