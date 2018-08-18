<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="faculty_payment.aspx.cs" Inherits="admin_faculty_payment" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
     
        
                     /*   th, td {
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
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td colspan="4" style="border:none;">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td width="250">
                Id:</td>
            <td width="550">
                <asp:TextBox ID="txtid" runat="server" AutoPostBack="True" 
                    ontextchanged="txtid_TextChanged" Width="200px"></asp:TextBox>
            </td>
            <td width="300">
                Payment:</td>
            <td width="350">
             
         
                <asp:TextBox ID="txtpayment" runat="server" Width="200px" AutoPostBack="True" 
                    ontextchanged="txtpayment_TextChanged">00.00</asp:TextBox>
               
          
                <cc1:FilteredTextBoxExtender ID="txtpayment_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtpayment" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
               
          
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
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" CssClass="innerlbls" Text="Name:"></asp:Label>
                </td>
            <td>
             
         
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
               
          
            </td>
            <td>
                Due:</td>
            <td>
             
         
                <asp:TextBox ID="txtdue" runat="server" Width="200px">00.00</asp:TextBox>
                
          
                <cc1:FilteredTextBoxExtender ID="txtdue_FilteredTextBoxExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdue" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
                
          
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
        </tr>
        <tr>
            <td>
                Month:</td>
            <td>
             
         
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                   <asp:ListItem Value="0">--MM--</asp:ListItem>
                <asp:ListItem Value="01">01</asp:ListItem>
                <asp:ListItem Value="02">02</asp:ListItem>
                <asp:ListItem Value="03">03</asp:ListItem>
                <asp:ListItem Value="04">04</asp:ListItem>
                <asp:ListItem Value="05">05</asp:ListItem>
               <asp:ListItem Value="06">06</asp:ListItem>
                <asp:ListItem Value="07">07</asp:ListItem>
                <asp:ListItem Value="08">08</asp:ListItem>
                <asp:ListItem Value="09">09</asp:ListItem>
                <asp:ListItem Value="10">10</asp:ListItem>
                <asp:ListItem Value="11">11</asp:ListItem>
                <asp:ListItem Value="12">12</asp:ListItem>
                </asp:DropDownList>
               
          
          <asp:DropDownList ID="DropDownList2" runat="server" Width="100px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
              <asp:ListItem Value="0">--YYYY--</asp:ListItem>
          </asp:DropDownList>
               
          
            </td>
            <td>
                <asp:Label ID="lblpay" runat="server" CssClass="innerlbls" Text="Payment Type:"></asp:Label>
            </td>
            <td>
                
                <asp:RadioButtonList ID="rbtrupee" runat="server" RepeatDirection="Horizontal"
                    onselectedindexchanged="rbtrupee_SelectedIndexChanged" AutoPostBack="True" 
                    Width="450px" BorderWidth="0px">
                    <asp:ListItem Selected="True" >Cash</asp:ListItem>
                    <asp:ListItem>Cheque</asp:ListItem>
                    <asp:ListItem>DD</asp:ListItem>
                    <asp:ListItem>NEFT</asp:ListItem>
                    <asp:ListItem>RTGS</asp:ListItem>
                    <asp:ListItem>IMPS</asp:ListItem>
                </asp:RadioButtonList>
                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Payment Details:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcdno" runat="server" CssClass="tbox" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Current Due:</td>
            <td>
                <asp:TextBox ID="txttotalpay" runat="server" Width="200px" 
                    ontextchanged="txttotalpay_TextChanged">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txttotalpay_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txttotalpay" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>
                <asp:Label ID="Label11" runat="server" CssClass="innerlbls" Text="Paid By:"></asp:Label>
            </td>
            <td >
                
                <asp:TextBox ID="txtremark" runat="server" TextMode="MultiLine" Width="200px" 
                    ontextchanged="txtremark_TextChanged"></asp:TextBox>
                
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
        </tr>
        <tr>
            <td>
                Previous Due:</td>
            <td>
                <asp:TextBox ID="txtpreviousdue" runat="server" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="txtpreviousdue_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="txtpreviousdue" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td>
                Date:</td>
            <td>
            
                <asp:TextBox ID="txtdt" runat="server" Width="200px" 
                    ontextchanged="txtdt_TextChanged"></asp:TextBox>
              <%--  <cc1:MaskedEditExtender ID="txtdt_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="txtdt">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="txtdt_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdt" Format="dd/MM/yyyy" 
                    PopupButtonID="Image1">
                </cc1:CalendarExtender><asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
                
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
        </tr>
        <tr>
            <td>
                Balance :</td>
            <td>
             
         
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="200px">00.00</asp:TextBox>
               
          
                <cc1:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
               
          
            </td>
            <td>
                Remark:</td>
            <td>
            
                <asp:TextBox ID="txtdtlremark" runat="server" TextMode="MultiLine" Width="200px" 
                    ontextchanged="txtremark_TextChanged"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Submit" Width="80px" onclick="Button1_Click" />
                &nbsp;<asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" Text="Reset" Width="80px" onclick="Button2_Click" />
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

