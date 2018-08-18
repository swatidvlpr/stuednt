<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="Assigningwork.aspx.cs" Inherits="Admin_Assigningwork" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td width="20px">
            &nbsp;</td>
        <td>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
    </tr>
    <tr>
        <td align="left">
            Staff Name:</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="124px">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Select Staff Name?">*</asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td align="left">
            Assign Work:</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Assign Work?">*</asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator2">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td align="left">
            Assign Work Details</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Enter detail?">*</asp:RequiredFieldValidator>
            <cc1:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
                runat="server" Enabled="True" TargetControlID="RequiredFieldValidator3">
            </cc1:ValidatorCalloutExtender>
        </td>
    </tr>
    <tr>
        <td align="left">
            Date:</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <cc1:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" 
                Enabled="True" TargetControlID="TextBox4">
            </cc1:CalendarExtender>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Date?">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        </td>
    </tr>
    <tr>
        <td align="left">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
        <td align="left">
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

