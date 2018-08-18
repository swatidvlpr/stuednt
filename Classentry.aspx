<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Classentry.aspx.cs" Inherits="admin_Classentry" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">     
        .style2
        {
            height: 22px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="1" cellspacing="1" align="center" width="90%">
        <tr>
            <td colspan="4" style="border:none;">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Id:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="300px">
                </asp:DropDownList>
            </td>
            <td>
                Details:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
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
                Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                Timing:</td>
            <td>
            <table>
            <tr>
            <td><asp:TextBox ID="TextBox6" runat="server" Width="70px">00:00:00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox6_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox6" FilterType="Numbers, Custom" ValidChars=":,">
                </cc1:FilteredTextBoxExtender>
                </td>
             <td>
                 <asp:DropDownList ID="DropDownList2" runat="server" Width="70px">
                     <asp:ListItem Value="0">-Select-</asp:ListItem>
                     <asp:ListItem>AM</asp:ListItem>
                     <asp:ListItem>PM</asp:ListItem>
                 </asp:DropDownList>
             </td>

              <td>To</td>

              <td><asp:TextBox ID="TextBox11" runat="server" EnableViewState="False" Width="70px" 
                      AutoPostBack="True" ontextchanged="TextBox11_TextChanged">00:00:00</asp:TextBox>
                  <cc1:FilteredTextBoxExtender ID="TextBox11_FilteredTextBoxExtender" 
                      runat="server" Enabled="True" TargetControlID="TextBox11" FilterType="Numbers, Custom" ValidChars=":,">
                  </cc1:FilteredTextBoxExtender>
                </td>
               <td><asp:DropDownList ID="DropDownList3" runat="server" Width="70px" 
                       AutoPostBack="True" 
                       onselectedindexchanged="DropDownList3_SelectedIndexChanged">
                   <asp:ListItem Value="0">-Select-</asp:ListItem>
                <asp:ListItem>AM</asp:ListItem>
                     <asp:ListItem>PM</asp:ListItem>
                 </asp:DropDownList></td>
            </tr>
            
            </table>



                

                
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style2">
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                Class:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                Duration:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
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
                Date:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                <%--<cc1:MaskedEditExtender ID="TextBox3_MaskedEditExtender" runat="server" 
                    CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" 
                    CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                    CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                    Mask="99/99/9999" MaskType="Date" TargetControlID="TextBox3">
                </cc1:MaskedEditExtender>--%>
                <cc1:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" 
                    Enabled="True" Format="dd/MM/yyyy" PopupButtonID="Image1" 
                    TargetControlID="TextBox3">
                </cc1:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/admin/images/calendar.jpg" />
            </td>
            <td>
                No Of Classes:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="300px">0</asp:TextBox>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Subject:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                Rate
                Per Class:</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="300px" AutoPostBack="True" 
                    ontextchanged="TextBox9_TextChanged">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox9_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox9" FilterType="Numbers, Custom" ValidChars=".,">
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
                Chapter:</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>
                Total Payment:</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="300px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox10_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox10" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="right" style="padding-right:20px;">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    BackColor="Yellow" BorderColor="Black" Height="40px" Width="80px" />
            </td>
            <td style="padding-left:-10px;">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                    BackColor="Yellow" BorderColor="Black" Height="40px" Width="80px" />
            </td>
            <td align="left">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

