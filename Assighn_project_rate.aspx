<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Assighn_project_rate.aspx.cs" Inherits="admin_Assighn_project_rate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 197px;
        }
        .style3
        {
            width: 197px;
            height: 24px;
        }
        .style4
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
            </td>
            <td class="style4" width="230">
            </td>
            <td class="style4">
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                Source:</td>
            <td align="left" width="200">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="200px">
                </asp:DropDownList>
            </td>
            <td align="left" width="150">
                Total Amount:</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px">00.00</asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox2" FilterType="Numbers, Custom" ValidChars=".,">
                </cc1:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table align="left" width="100%">
                        <tr>
                            <td align="left" class="style1">
                                Source
                            </td>
                            <td>
                                <asp:TextBox ID="txtheadname" runat="server" CssClass="tbox" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="Button2" runat="server" BackColor="Yellow" BorderColor="Black" 
                                    Height="35px" onclick="Button2_Click" Text="Submit" Width="80px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Name:</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td align="left">
                Date:</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
               <%-- <cc1:MaskedEditExtender ID="TextBox3_MaskedEditExtender" runat="server" 
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
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td align="center" colspan="3">
                <asp:Button ID="Button1" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="35px" onclick="Button1_Click" Text="Submit" Width="80px" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="Yellow" BorderColor="Black" 
                    Height="35px" onclick="Button3_Click" Text="Reset" Width="80px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

