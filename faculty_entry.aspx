<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="faculty_entry.aspx.cs" Inherits="admin_faculty_entry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
                /* th, td {
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
        
        
        .style2
        {
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td colspan="4" style="border:none;" >
                &nbsp;</td>
        </tr>
        <tr>
            <td width="300">
                Name :</td>
            <td width="250">
                <asp:TextBox ID="TextBox1" runat="server" TabIndex="1" Width="200px"></asp:TextBox>
            </td>
            <td class="style2">
                Faculty Id :</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" TabIndex="7" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Designation:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TabIndex="2" Width="200px"></asp:TextBox>
            </td>
            <td class="style2">
                Class :</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" TabIndex="7" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TabIndex="3" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
            <td class="style2">
                Subject :</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" TabIndex="8" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Mobile No :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TabIndex="4" Width="200px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox4">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td class="style2">
                Chapters :</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TabIndex="9" TextMode="MultiLine" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Alternat Mobile No :</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TabIndex="5" Width="200px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox5_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox5">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td class="style2">
                Total Classes:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" TabIndex="10" Width="200px">0</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox8_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox8" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Email Id:</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" TabIndex="6" Width="200px"></asp:TextBox>
            </td>
            <td class="style2">
                Fee Per Class:</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True" 
                    ontextchanged="TextBox9_TextChanged" TabIndex="11" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox9"    FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="right">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Enter Email Id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Date Of Joining:</td>
            <td align="left">
                <asp:TextBox ID="TextBox13" runat="server" TabIndex="7" Width="200px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox13_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox13">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox13_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1" 
                    TargetControlID="TextBox13">
                </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
            </td>
            <td class="style2">
                Total Payment:</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" TabIndex="12" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox10_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox10"    FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" width="50">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
            <table width="100%">
            <tr>
            <td width="50%" align="right">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" onclick="Button1_Click" Text="Submit" Width="80px" />


                &nbsp;</td>
              <td width="50%" align="left">
                <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="40px" onclick="Button2_Click" Text="Reset" Width="80px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            
            </table>
            </td>
        </tr>
        </table>
</asp:Content>

