<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Expenditures.aspx.cs" Inherits="Admin_Expenditures" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        
        
                  
        /*   th, td {
border:1px solid  #7bb5ca;
padding:6px;
font:normal 14px/16px arial ;
}
  */
  
        .tbox
        {}
        .style4
        {
            width: 321px;
        }
        .style5
        {
            height: 44px;
        }
        .style7
        {
            width: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  cellspacing="1" align="center" width="90%">
    <tr>
    <td>
    
                        <asp:Label ID="Label3" runat="server" CssClass="innerlbls" Text="Voucher No. :"></asp:Label>
    
    </td>
    <td class="style4">
    
                        <asp:TextBox ID="TextBox1" runat="server" Width="250px" AutoPostBack="True" 
                            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    
    </td>
    <td class="style7">
    
                        <asp:Label ID="Label8" runat="server" Text="Amount :" CssClass="innerlbls"></asp:Label>
    
    </td>
    <td>
    
                        <asp:TextBox ID="TextBox5" runat="server" Width="250px">00.00</asp:TextBox>
    
                        <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" 
                            runat="server" Enabled="True" TargetControlID="TextBox5" FilterType="Numbers, Custom" ValidChars=".,">
                        </cc1:FilteredTextBoxExtender>
    
    </td>
    </tr>
    <tr>
    <td>
    
    </td>
    <td class="style4">
    
    </td>
    <td class="style7">
    
        &nbsp;</td>
    <td>
    
        &nbsp;</td>
    </tr>
    <tr>
    <td>
    
                        <asp:Label ID="Label6" runat="server" Text="Head :" CssClass="innerlbls"></asp:Label>
    
    </td>
    <td class="style4">
    
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="30px" 
                            Width="255px">
                            <asp:ListItem Value="00">--Head--</asp:ListItem>
                            <asp:ListItem Value="1">House Rent</asp:ListItem>
                            <asp:ListItem Value="3">Electricty Bill</asp:ListItem>
                            <asp:ListItem Value="4">Mobile Bill</asp:ListItem>
                            <asp:ListItem Value="5">Landline Bill</asp:ListItem>
                            <asp:ListItem Value="6">Water Bill</asp:ListItem>
                            <asp:ListItem Value="7">Maintenance</asp:ListItem>
                            <asp:ListItem Value="8">Advertisement</asp:ListItem>
                            <asp:ListItem Value="10">Marketing</asp:ListItem>
                            <asp:ListItem>Conveyance</asp:ListItem>
                            <asp:ListItem>Refund</asp:ListItem>
                            <asp:ListItem Value="11">Hospitality</asp:ListItem>
                            <asp:ListItem>Hotel</asp:ListItem>
                            <asp:ListItem Value="12">Entertenment</asp:ListItem>
                            <asp:ListItem Value="9">Picnic</asp:ListItem>
                            <asp:ListItem>Commision</asp:ListItem>
                            <asp:ListItem Value="14">Other</asp:ListItem>
                        </asp:DropDownList>
    
    </td>
    <td class="style7">
    
                        <asp:Label ID="Label4" runat="server" CssClass="innerlbls" 
                            Text="Payment Type :"></asp:Label>
    
                    </td>
    <td>
    
                <asp:RadioButtonList ID="rbtrupee" runat="server" CssClass="innerlbls" RepeatDirection="Horizontal" 
                    onselectedindexchanged="rbtrupee_SelectedIndexChanged" AutoPostBack="True" 
                    Width="350px" RepeatLayout="Flow">
                    <asp:ListItem Selected="True">Cash &nbsp;</asp:ListItem>
                    <asp:ListItem>Cheque &nbsp;</asp:ListItem>
                    <asp:ListItem>DD &nbsp;</asp:ListItem>
                    <asp:ListItem>NEFT &nbsp;</asp:ListItem>
                    <asp:ListItem>RTGS &nbsp;</asp:ListItem>
                    <asp:ListItem>IMPS &nbsp;</asp:ListItem>
                </asp:RadioButtonList>
    
                    </td>
    </tr>

    <tr>
    <td>
    
        &nbsp;</td>
    <td class="style4">
    
       
        <asp:Panel ID="Panel1" runat="server">

        <table width="100%">
        <tr>
        
        <td>
         <asp:TextBox ID="TextBox6" runat="server" Width="250px"></asp:TextBox>
        </td>
       
        </tr>
        <tr>
         <td>
            <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Yellow" 
                 BorderColor="Black" BorderStyle="Solid" Height="40px" onclick="Button1_Click" 
                 Width="80px" />
        </td>
        
        </tr>
        
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="head_id" onrowdeleting="GridView2_RowDeleting" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="head_name" HeaderText="Header Name">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:CommandField SelectText="Edit" ShowSelectButton="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        
        </table>

        </asp:Panel>

        

        </td>
    <td class="style7">
    
                <asp:Label ID="Label10" runat="server" CssClass="innerlbls" 
                        Text="Payment Details :"></asp:Label>
                </td>
    <td>
    
                <asp:TextBox ID="txtcdno" runat="server" CssClass="tbox" TextMode="MultiLine" 
                    Width="248px"></asp:TextBox>
            </td>
    </tr>

    <tr>
    <td>
    
                        <asp:Label ID="Label5" runat="server" CssClass="innerlbls" Text="Date :"></asp:Label>
                    </td>
    <td class="style4"><table>
    <tr>
    <td  style="border:none;"><asp:DropDownList ID="ddldd" runat="server" CssClass="tbox" Height="27px">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
                        </asp:DropDownList></td>
    <td style="border:none;"><asp:DropDownList ID="ddlmm" runat="server" CssClass="tbox" Height="27px" 
                            onselectedindexchanged="ddlmm_SelectedIndexChanged" 
            Width="82px">
                        <asp:ListItem Value="0">---Select---</asp:ListItem>
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
                        </asp:DropDownList></td>
    <td style="border:none;"><asp:DropDownList ID="ddlyy" runat="server" CssClass="tbox" Height="27px">
        <asp:ListItem Value="0">---Select---</asp:ListItem>
                        </asp:DropDownList></td>
    </tr>
    
    </table>
    
                    </td>
    <td class="style7">
    
                        <asp:Label ID="Label7" runat="server" Text="Description :" CssClass="innerlbls"></asp:Label>
                    </td>
    <td>
    
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </td>
    </tr>

    <tr>
    <td align="center" colspan="4">
    
                        &nbsp;</td>
    </tr>

    <tr>
    <td align="center" class="style5" colspan="4">
    
                        <asp:Button ID="btnsave" runat="server" BackColor="Yellow" BorderColor="Black" 
                            BorderStyle="Solid" Height="40px" onclick="btnsave_Click" Text="Submit" 
                            Width="80px" /> &nbsp;<asp:Button ID="btnreset" runat="server" 
                            BackColor="Yellow" BorderColor="Black" 
                            BorderStyle="Solid" Height="40px" onclick="btnreset_Click" Text="Reset" 
                            Width="80px" />
                        <asp:Button ID="btnview" runat="server" BackColor="Yellow" BorderColor="Black" 
                            BorderStyle="Solid" Height="40px" onclick="btnview_Click" Text="View" 
                            Width="80px" Visible="False" />
                        <asp:Button ID="btnupdate" runat="server" BackColor="Yellow" 
                            BorderColor="Black" BorderStyle="Solid" Height="40px" onclick="btnupdate_Click" 
                            Text="Update" Width="80px" />
    
       
    
        </td>
    </tr>

    <tr>
    <td align="right" colspan="4" style="border:none;">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </td>
    </tr>

    <tr>
    <td align="center" colspan="4" style="border:none;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="Expend_id" 
                            
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
                            CellPadding="4" ForeColor="#333333" 
                            GridLines="None" onrowdatabound="GridView1_RowDataBound" 
             ShowFooter="True">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <%--<asp:BoundField DataField="Description" HeaderText="Description" />--%>
                 <%--<asp:BoundField DataField="Amount" HeaderText="Amount" />--%>
                <%-- <asp:CommandField SelectText="Edit" ShowSelectButton="True" />--%>
                 <asp:TemplateField HeaderText="SN" >
                     <ItemTemplate>
                         <%#GridView1.Rows.Count + 1%>
                     </ItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="Voucher_no" HeaderText="Voucher No" >
                 <HeaderStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Head" HeaderText="Head" >
                 <HeaderStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="ddate" HeaderText="Date" >
                 <HeaderStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="payment_type" HeaderText="Payment Type" >
                 <HeaderStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="chq_dd_dtl" HeaderText="Payment Details">
                 <HeaderStyle HorizontalAlign="Center" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:TemplateField HeaderText="Description">
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         Total:
                     </FooterTemplate>
                     <FooterStyle HorizontalAlign="Center" />
                     <HeaderStyle HorizontalAlign="Center" />
                     <ItemStyle HorizontalAlign="Center" />
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Amount" ItemStyle-HorizontalAlign="Right" 
                                    FooterStyle-HorizontalAlign="Right">
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%#Eval("Amount","{0:n}") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                     </FooterTemplate>

<FooterStyle HorizontalAlign="Right"></FooterStyle>

                     <HeaderStyle HorizontalAlign="Right" />

<ItemStyle HorizontalAlign="Right"></ItemStyle>
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

