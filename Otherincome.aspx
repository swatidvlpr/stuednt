<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Otherincome.aspx.cs" Inherits="admin_Otherincome" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
           /*th, td {
border:1px solid  #7bb5ca;
padding:12px;
font:normal 14px/16px arial ;
}
  
         th, td {
border:1px solid  #7bb5ca;

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
     
     
   }
   
   */






        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table cellspacing="1" align="center" width="90%">
        <%--tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>--%>
        <tr>
            <td align="left">
                <asp:Label ID="Label7" runat="server" CssClass="innerlbls" Text="Source:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="200px">
                </asp:DropDownList>
            </td>
            <td align="left">
                Payment :</td>
            <td>
                <asp:TextBox ID="txtpayment" runat="server" AutoPostBack="True" 
                    ontextchanged="txtpayment_TextChanged" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtpayment_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtpayment" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td valign="top">
                <%--<asp:Panel ID="Panel1" runat="server">
                <table align="left" width="100%">
                <tr>
                <td align="left" class="style1">Source </td>
                    <td>
                        <asp:TextBox ID="txtheadname" runat="server" CssClass="tbox" Width="200px"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                    </td>
                </tr>
                </table>

                </asp:Panel>--%>
            </td>
            <td align="left">
            
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">Name:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Width="200px">
                </asp:DropDownList>
            </td>
            <td align="left">            
                Due:</td>
            <td>            
                <asp:TextBox ID="txtdue" runat="server" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtdue_FilteredTextBoxExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdue" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <%-- <tr>
            <td align="right">
                &nbsp;</td>
            <td></td>
            <td>
                &nbsp;</td>
        </tr>--%>        <%--<tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>--%>        
       <%-- <tr>
            <td colspan="4" width="100px">
                &nbsp;</td>
        </tr>--%>      <%--  <tr>
            <td align="right">
                <asp:Label ID="lblpay" runat="server" CssClass="innerlbls" Text="Pay"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtpay" runat="server" CssClass="tbox"></asp:TextBox>
            </td>
            <td></td>
        </tr>--%>
        
        <tr>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="left">
            
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left">
                <asp:Label ID="lblpay1" runat="server" CssClass="innerlbls" 
                    Text="Total Amount : "></asp:Label>
            </td>
            <td>            
                <asp:TextBox ID="txtAmount" runat="server" CssClass="tbox" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtAmount_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtAmount" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>            
                <asp:Label ID="lblpay0" runat="server" CssClass="innerlbls" 
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
            <td align="left">
                &nbsp;</td>
            <td>            
                &nbsp;</td>
            <td align="left">            
            
                <asp:Label ID="Label10" runat="server" CssClass="innerlbls" 
                        Text="Payment Details :"></asp:Label>
            </td>
            <td>            
            
                <asp:TextBox ID="txtcdno" runat="server" CssClass="tbox" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                Date:</td>
            <td align="left">            
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <%--<cc1:MaskedEditExtender ID="TextBox1_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox1">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1"
                    TargetControlID="TextBox1">
                </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
            </td>
            <td>            
                <asp:Label ID="Label11" runat="server" CssClass="innerlbls" 
                    Text="Description :"></asp:Label>
            </td>
            <td>            
            
                <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
                &nbsp;</td>
            <td>            
                &nbsp;</td>
            <td align="center">            
                &nbsp;</td>
            <td>            
            
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
            
                <asp:Button ID="btnpaid" runat="server" CssClass="btn" onclick="btnpaid_Click" 
                    Text="Submit" BackColor="Yellow" BorderColor="Black" Height="40px" 
                        Width="80px" />
                        &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
                    Text="Reset" BackColor="Yellow" BorderColor="Black" Height="40px" 
                        Width="80px" />
                <asp:Label ID="lblms" runat="server" CssClass="errorlbls"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
            
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" align="center" style="border:none;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="fid" 
                    onrowdeleting="GridView1_RowDeleting" Width="990px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                     <asp:TemplateField HeaderText="SN" >
                                <ItemTemplate>
                                    <%#GridView1.Rows.Count + 1%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle Width="10%" HorizontalAlign="Center" />
                            </asp:TemplateField>
                     <%--   <asp:BoundField DataField="fid" HeaderText="Id" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>--%>
                        <asp:BoundField DataField="headernm" HeaderText="Source" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Name" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Amount" HeaderText="Amount" 
                            DataFormatString="{0:n}" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="payment" DataFormatString="{0:n}" 
                            HeaderText="Payment" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="due" DataFormatString="{0:n}" HeaderText="Due" >
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Payment Details" DataField="type" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="date" HeaderText="Date" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="remarks" HeaderText="Description" >
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                     <%--<asp:TemplateField ItemStyle-Width="200">
                        <ItemTemplate >
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Detail" NavigateUrl='<%#Eval("fid","Otherincomedtl.aspx?id={0}") %>'></asp:HyperLink>
                        
                        </ItemTemplate>
                        
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        
                        </asp:TemplateField>
                     <asp:TemplateField>
                           <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" Text="Payment due" NavigateUrl='<%#Eval("fid","Otherincome.aspx?idd={0}") %>'></asp:HyperLink>
                        
                        </ItemTemplate>
                        
                        </asp:TemplateField>--%>
                        <%--<asp:CommandField ShowDeleteButton="True" />--%>
                        <asp:TemplateField></asp:TemplateField>
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

