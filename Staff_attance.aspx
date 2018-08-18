<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Staff_attance.aspx.cs" Inherits="admin_Staff_attance" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
     /*  th, td {
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
     
     
   } */
        .style3
        {
            height: 56px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
    <tr>
        <td>
            Emp Id:</td>
        <td align="left">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Height="21px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="250px">
            </asp:DropDownList>
        </td>
        <td align="left">
            Date:</td>
        <td align="left">
            <asp:TextBox ID="TextBox12" runat="server" Height="23px" Width="210px"></asp:TextBox>
           <%-- <cc1:MaskedEditExtender ID="TextBox12_MaskedEditExtender" runat="server" 
                CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox12">
            </cc1:MaskedEditExtender>--%>
            <cc1:CalendarExtender ID="TextBox12_CalendarExtender" runat="server"
                Enabled="True" Format="" PopupButtonID="Image1" 
                TargetControlID="TextBox12">
            </cc1:CalendarExtender>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
        </td>
    </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Name:</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
            </td>
            <td align="left">
                In Time:</td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="210px">00:00:00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox6"  FilterType="Numbers, Custom" ValidChars=":,">
                </cc1:FilteredTextBoxExtender>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
    <tr>
        <td>
            Designation:</td>
        <td align="left">
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
        </td>
        <td align="left">
            Out Time:</td>
        <td align="left">
            <asp:TextBox ID="TextBox7" runat="server" Height="23px" Width="210px">00:00:00</asp:TextBox>
            <cc1:FilteredTextBoxExtender ID="TextBox7_FilteredTextBoxExtender" 
                runat="server" Enabled="True" TargetControlID="TextBox7"   FilterType="Numbers, Custom" ValidChars=":,">
            </cc1:FilteredTextBoxExtender>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>PM</asp:ListItem>
                <asp:ListItem>AM</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
        <tr>
            <td>
                Mobile No:</td>
            <td align="left">
                <%--<asp:HiddenField ID="HiddenField1" runat="server" />--%>
                <%--  <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                Text="Input Time" Width="102px" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="TextBox3">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td align="left">
                R<span style="font-size:11.0pt;line-height:115%;
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">emark</span> :</td>
            <td align="left">
                <asp:TextBox ID="TextBox10" runat="server" Height="23px" TextMode="MultiLine" 
                    Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email Id:</td>
            <td align="left" class="style3">
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox4_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox4" FilterType="Numbers, LowercaseLetters, Custom" ValidChars=".@">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td align="left" class="style3">
                &nbsp;</td>
            <td align="left" class="style3">
                <asp:HiddenField ID="HiddenField3" runat="server" />
            </td>
        </tr>
        <tr>
            <td height="15">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
    <tr>
        <td colspan="4" align="center">
            <asp:HiddenField ID="HiddenField4" runat="server" />
            <asp:HiddenField ID="HiddenField5" runat="server" />
            <%-- <asp:HiddenField ID="HiddenField2" runat="server" />
            <asp:Button ID="Button3" runat="server" Height="21px" Text="Output Time" 
                Width="100px" onclick="Button3_Click1" />--%>
            <%--  <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>--%>
            <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                BorderStyle="Solid" Height="40px" onclick="Button1_Click" Text="Submit" 
                Width="80px" />&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                BorderStyle="Solid" Height="40px" onclick="Button2_Click" Text="Reset" 
                Width="80px" />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            
        </td>
    </tr>
</table>
    
    </ContentTemplate>
    </asp:UpdatePanel>

    
</asp:Content>

